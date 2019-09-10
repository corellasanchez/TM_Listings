/**
 * @author Varun Kumar <varunon9@gmail.com>
 */

const app = require('express')();

const bodyParser = require('body-parser');

app.use(bodyParser.json({
    limit: '8mb'
})); // support json encoded bodies

// environment variables
const PORT = process.env.PORT || 4002;
const HOST = process.env.HOST || '0.0.0.0';

// home page
app.get('/', (req, res) => {
	res.json({
		success: true,
		message: 'Hello world'
	});
});

// insert a student into database
app.post('/add-student', (req, res) => {
	const student = req.body;
	const query = 'INSERT INTO students values(?, ?)';

	connection.query(query, [student.rollNo, student.name], (err, results, fields) => {
		if (err) {
			console.error(err);
			res.json({
				success: false,
				message: 'Error occured'
			});
		} else {
			res.json({
				success: true,
				message: 'Successfully added student'
			});
		}
	});
});

// fetch all students
app.post('/get-students', (req, res) => {
	const query = 'SELECT * FROM students';
    connection.query(query, (err, results, fields) => {
    	if (err) {
    		console.error(err);
    		res.json({
    			success: false,
    			message: 'Error occured'
    		});
    	} else {
    		res.json({
    			success: true,
    			result: results
    		});
    	}
    });
});

app.listen(PORT, HOST, (err) => {
	if (err) {
		console.error('Error starting  server', err);
	} else {
		console.log('server listening at port ' + PORT);
	}
});
