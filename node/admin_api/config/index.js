module.exports = {
  port: process.env.PORT || 4000,
  host: process.env.HOST || '0.0.0.0',
  dbConfig: {
    host: process.env.SQL_HOST || '172.17.0.2',
    user: process.env.SQL_USER || 'root',
    password: process.env.SQL_PASSWORD || 'password',
    database: process.env.SQL_DATABASE || 'test',
    port: process.env.SQL_PORT || 3306,
    multipleStatements: true
  },
  secretKey: 'Tm115tInG'
};
