const express = require('express');
const http = require('http');
const path = require('path');

const app = express();
const server = http.createServer(app);
const { PORT } = require('./src/config');

app.set('port', PORT);
app.use('/dist', express.static(path.join(__dirname, 'dist')));
app.use(express.static(path.join(__dirname, 'dist')));
app.get('/*', (req, res) => {
  res.sendFile(path.join(__dirname, '/index.html'));
});
server.listen(PORT, (e) => {
  if (e) throw e
  console.log(`server running at ${PORT}`);
});
