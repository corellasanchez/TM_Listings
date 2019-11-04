require('dotenv').config();

const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const cors = require('cors');

var routes = require('./routes');

app.use(bodyParser.json({
    limit: '8mb'
}));

app.use(cors());

const PORT = process.env.PORT || 4000;
const HOST = process.env.HOST || '0.0.0.0';
const UPLOAD_FOLDER = process.env.UPLOAD_FOLDER || 'uploads';


app.use((err, req, res, next) => {
  if (err instanceof SyntaxError) 
  return res.status(400).json({ error: 'Su solicitud tiene un formato JSON invalido!' })
});

app.use('/', routes);

app.use('/images', express.static(UPLOAD_FOLDER));

app.listen(PORT, HOST, (err) => {
	if (err) {
		console.error('error starting  server', err);
	} else {
		console.log('server listening at port ' + PORT);
	}
});