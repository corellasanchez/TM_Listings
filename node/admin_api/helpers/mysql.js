const db = require('../config/db')

function runQuery(sql) {
    return new Promise(resolve => {
        db.query(sql, (err, result) => {
            if (err) {
                console.log(err);
                return false;
            } else {
                let response;
                if (result.length === 0) {
                    response = null;
                } else {
                    if (result.length) {
                        response = result;
                    } else {
                        response = [result];
                    }
                }
                return resolve(response);
            }
        })
    })
};

module.exports = {
    runQuery
};