const userQueries = require('../queries/user');
const { encryptPassword } = require('../helpers/security');

async function createUser(req, res, next) {
    let { username, password, access } = req.body;
    try {
        if (!username || !password || !access) return res.send('MISSING BODY PARAMETERS');
        let data = req.body;
        data.password = await encryptPassword(password);
        let result = await userQueries.createUser(data);
        if (result[0].affectedRows) {
            res.send(`USER CREATED WITH ID: ${result[0].insertId}`);
        } else {
            res.send(`USER NOT CREATED, PROBABLY DUPLICATED`);
        }
    } catch (error) {
        next(error);
    }
};

module.exports = {
    createUser
};
