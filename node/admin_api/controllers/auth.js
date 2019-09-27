const authQueries = require('../queries/auth');
const { createToken, comparePassword } = require('../helpers/security');

async function login(req, res, next) {
    let { username, password } = req.body;
    try {
        if (!username || !password) return res.send('MISSING BODY PARAMETERS');
        let userInfo = await authQueries.getUserByUsername(username);
        if (userInfo !== null) {
            let dbPassword = userInfo[0].contrasena;
            let validComparison = await comparePassword(password, dbPassword);
            if (validComparison) {
                const token = createToken(userInfo[0]);
                res.send({
                    token: token
                });
            } else {
                //INVALID PASSWORD
                res.send("INVALID CREDENTIALS");
            }
        } else {
            //INVALID USERNAME
            res.send("INVALID CREDENTIALS");
        }
    } catch (error) {
        next();
    }
};

module.exports = {
    login
};
