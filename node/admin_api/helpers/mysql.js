const db = require('../config/db');

function tablePicker(req, res, next) {
  let path = req.baseUrl.substr(1);
  path = (path.split('?'))[0];
  path = (path.split('/'))[0];
  req.headers.table = path;
  next();
}

function runQuery(sql, args) {
  return new Promise((resolve, reject) => {
    db.query(sql, args, (err, rows) => {
      if (err) return reject(err);
      return resolve(rows);
    });
  });
};

function create(args, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(() => "?");
  let sql = `INSERT INTO ${table} (${fields}) VALUES (${valueMarks});`;
  return runQuery(sql, values);
}

function find(params, table) {
  let parsedArgs = {};
  let whereStatement = '', values = [];
  let { args, orderBy, sortOrder } = params;
  let orderByStatement = (orderBy) ? (sortOrder) ? `ORDER BY ${orderBy} ${sortOrder}` : `ORDER BY ${orderBy} ASC` : '';
  if (args) {
    args.split(';').forEach(arg => {
      let tempArg = arg.split(':');
      parsedArgs[tempArg[0]] = tempArg[1];
    });
    let fields = Object.keys(parsedArgs);
    values = Object.values(parsedArgs);
    fields.map(field => {
      (whereStatement === '') ? whereStatement += `WHERE ${field} = ?` : whereStatement += ` AND ${field} = ?`;
    });
  }
  sql = `SELECT * FROM ${table} ${whereStatement} ${orderByStatement}`;
  return runQuery(sql, values);
}

function remove(args, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(field => `${field} = ?`);
  let sql = `DELETE FROM ${table} WHERE ${valueMarks}`;
  return runQuery(sql, values);
}

function update(args, id, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  values.push(id);
  let valueMarks = fields.map(field => `${field} = ?`);
  let sql = `UPDATE ${table} SET ${valueMarks} WHERE id=?`;
  return runQuery(sql, values);
}

async function list(params, table, select = '', joins = '') {
  let { args, andArgs, rangeArgs, pageSize, currentPage, orderBy, sortOrder } = params;
  let startingRow = (currentPage > 1) ? pageSize * (currentPage - 1) : 0;
  let whereStatement = '', values = [];
  let parsedArgs = {}, parsedAndArgs = {}, parsedRangeArgs = {};
  let resultCount = 0;
  let sql = '';

  let orderByStatement = (orderBy) ? (sortOrder) ? `ORDER BY ${orderBy} ${sortOrder}` : `ORDER BY ${orderBy} ASC` : '';
  if (args) {
    args.split(';').forEach(arg => {
      let tempArg = arg.split(':');
      parsedArgs[tempArg[0]] = tempArg[1];
    });
    let fields = Object.keys(parsedArgs);
    values = Object.values(parsedArgs).map(value => "%" + value + "%");
    fields.map(field => {
      (whereStatement === '') ? whereStatement += `WHERE ${field} LIKE ?` : whereStatement += ` OR ${field} LIKE ?`;
    });
  }

  if (andArgs) {
    andArgs.split(';').forEach(arg => {
      let tempArg = arg.split(':');
      parsedAndArgs[tempArg[0]] = tempArg[1];
    });
    let fields = Object.keys(parsedAndArgs);
    values = Object.values(parsedAndArgs).map(value => value);
    fields.map(field => {
      (whereStatement === '') ? whereStatement += `WHERE ${field} LIKE ?` : whereStatement += ` AND ${field} LIKE ?`;
    });
  }

  if (rangeArgs) {
    rangeArgs.split(';').forEach(arg => {
      let tempArg = arg.split(':');
      let tempRange = tempArg[1].split('~');
      parsedRangeArgs[tempArg[0]] = {
        from: tempRange[0],
        to: tempRange[1]
      }
    });
    let fields = Object.keys(parsedRangeArgs);
    rangeValues = Object.values(parsedRangeArgs).map(value => {
      values.push(value.from, value.to);
    });
    fields.map(field => {
      (whereStatement === '') ? whereStatement += `WHERE ${field} BETWEEN ? AND ?` : whereStatement += ` AND ${field} BETWEEN ? AND ?`;
    });
  }

  if (joins) { // the table has foreing keys
    resultCount = (await runQuery(`SELECT COUNT(*) count FROM ${table} ${joins} ${whereStatement};`, values))[0].count;
  } else {
    resultCount = (await runQuery(`SELECT COUNT(*) count FROM ${table} ${whereStatement};`, values))[0].count;
  }

  let pageCount = Math.ceil(resultCount / pageSize);

  if (select) { // Table has foreing keys and specific fields
    sql = `${select} ${joins} ${whereStatement} ${orderByStatement} LIMIT ${startingRow}, ${pageSize};`;
  } else {
    sql = `SELECT * FROM ${table} ${whereStatement} ${orderByStatement} LIMIT ${startingRow}, ${pageSize};`;
  }

  let result = await runQuery(sql, values);
  return {
    data: result,
    meta: {
      pagination: {
        total: resultCount,
        per_page: parseInt(pageSize),
        current_page: parseInt(currentPage),
        total_pages: pageCount
      }
    }
  };
}

module.exports = {
  tablePicker,
  create,
  find,
  remove,
  update,
  list
};