const express = require('express');
const http = require('http');
const path = require('path');

const app = express();
const server = http.createServer(app);
const { port } = require('./src/config');

app.set('port', port);
app.use('/dist', express.static(path.join(__dirname, 'dist')));
app.use(express.static(path.join(__dirname, 'dist')));
app.get('/*', (req, res) => {
  res.sendFile(path.join(__dirname, '/index.html'));
});
server.listen(port, (e) => {
  if (e) throw e
  console.log(`server running at ${port}`);
});
