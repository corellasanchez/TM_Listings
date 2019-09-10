require('dotenv').config();
const app = require('express')();
const bodyParser = require('body-parser');

var routes = require('./routes');

app.use(bodyParser.json({
    limit: '8mb'
}));

const PORT = process.env.PORT || 4000;
const HOST = process.env.HOST || '0.0.0.0';

app.use('/', routes);

app.listen(PORT, HOST, (err) => {
	if (err) {
		console.error('error starting  server', err);
	} else {
		console.log('server listening at port ' + PORT);
	}
});