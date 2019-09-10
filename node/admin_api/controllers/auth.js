const authQueries = require('../queries/auth');
const { createToken } = require('../helpers/security');

async function login(req, res, next) {
    let { username, password } = req.body;
    try {
        let userInfo = await authQueries.getUserByUsername(username);
        if (userInfo.password !== password)
            res.send("Passwords do not match!");
        const token = createToken(userInfo);
        res.send(token);
    } catch (error) {
        next();
    }
};

module.exports = {
    login
};
