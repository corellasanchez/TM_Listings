module.exports = errorHandler;

function errorHandler(err, req, res, next) {

  console.trace('ERROR HANDLER', err);

  if (typeof (err) === 'string') {
    // custom application error
    return res.status(400).json({ error: err });
  }

  if (err.name === 'UnauthorizedError') {
    // authentication error
    return res.status(401).json({ error: 'Token invalido' });
  }

  // Mysql errors
  switch (err.code) {
    case 'ER_PARSE_ERROR':
      return res.status(500).json({ error: 'Los parametros enviados, son incorrectos o estan incompletos' });

    case 'ER_BAD_NULL_ERROR':
      return res.status(500).json({ error: 'Uno de los campos requiere un valor y es nulo', message: err.sqlMessage });

    case 'ER_DUP_ENTRY':
      return res.status(500).json({ error: 'Registro duplicado', message: err.sqlMessage });

    case 'ER_TRUNCATED_WRONG_VALUE_FOR_FIELD':
      return res.status(500).json({ error: 'Un campo lleva un valor incorrecto', message: err.sqlMessage });

    case 'ER_NO_SUCH_TABLE':
      return res.status(500).json({ error: 'No existe la tabla', message: err.sqlMessage });

    case 'ER_NO_DEFAULT_FOR_FIELD':
      return res.status(500).json({ error: 'Algunos campos son requeridos', message: err.sqlMessage });
    
    case 'ER_SP_UNDECLARED_VAR':
        return res.status(500).json({ error: 'Algunos parametros son requeridos', message: err.sqlMessage });
  }

  // default to 500 server error
  return res.status(500).json({ error: err.message });
}