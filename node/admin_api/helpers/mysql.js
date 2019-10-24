const db = require('../config/db');

// function createDummyData(args, table, quantity) { //TESTING
//   // ------------------------- HOW TO CALL IT
//   // let data = {
//   //   nombre: {
//   //     type: "string",
//   //     size: 10
//   //   },
//   //   contrasena: {
//   //     type: "string",
//   //     size: 10
//   //   },
//   //   email: {
//   //     type: "string",
//   //     size: 10
//   //   },
//   //   acceso: {
//   //     type: "integer",
//   //     size: 1
//   //   }
//   // };
//   // createDummyData(data, table, 100);
//   // -------------------------
//   for (let i = 0; i < quantity; i++) {
//     let tempEntry = {};
//     let keys = Object.keys(args);
//     keys.forEach(key => {
//       switch (args[key].type) {
//         case 'string': tempEntry[key] = Math.random().toString(36).substring(7); break;
//         case 'integer': tempEntry[key] = Math.floor((Math.random() * 10) + 1); break;
//       }
//     })
//     create(tempEntry, table);
//   }
// }

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

function find(args, table) {
  let fields = Object.keys(args);
  let values = Object.values(args);
  let valueMarks = fields.map(field => `${field} = ?`);
  let sql = `SELECT * FROM ${table} WHERE ${valueMarks}`;
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
  let { args, pageSize, currentPage, orderBy, sortOrder } = params;
  let startingRow = (currentPage > 1) ? pageSize * (currentPage - 1) : 0;
  let whereStatement = '', values = null;
  let parsedArgs = {};
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