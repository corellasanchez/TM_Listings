const authQueries = require('../queries/auth');
const { createToken, comparePassword } = require('../helpers/security');

async function login(req, res, next) {
    try {
        let userInfo = await authQueries.getUserByUsername({ nombre: req.body.nombre });
        if (userInfo.length) {
            let dbPassword = userInfo[0].contrasena;
            let validComparison = await comparePassword(req.body.contrasena, dbPassword);
            if (validComparison) {
                const token = createToken(userInfo[0]);
                res.send({
                    token: token
                });
            } else {
                //INVALID PASSWORD
                res.status(401).json({ error: 'Credenciales invalidas'});
            }
        } else {
            //INVALID USERNAME
            res.status(401).json({ error: 'Credenciales invalidas'});
        }
    } catch (error) {
        next(error);
    }
};

module.exports = {
    login
};
