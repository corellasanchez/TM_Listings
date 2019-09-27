module.exports = {
  port: process.env.PORT || 4000,
  host: process.env.HOST || '0.0.0.0',
  dbConfig: {
    host: process.env.MYSQL_HOST || 'localhost',
    user: process.env.MYSQL_USER || 'root',
    password: process.env.MYSQL_PASSWORD || 'root',
    database: process.env.MYSQL_DATABASE || 'tmlisting',
    port: process.env.MYSQL_PORT || 8889,
    multipleStatements: true
  },
  secretKey: 'Tm115tInG'
};