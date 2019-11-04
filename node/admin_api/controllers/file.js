const uuidv4 = require('uuid/v4');
const path = require('path');
const fs = require('fs')
require('dotenv').config();
const UPLOAD_FOLDER = process.env.UPLOAD_FOLDER || 'uploads';

function getUploadFolder() {
  return UPLOAD_FOLDER
}

function generateFileName(oringinalName) {
  return uuidv4() + '.' + oringinalName.split('.').pop();
}

function uploadFile(req, res, next) {
  try {
    const file = req.file;
    if (!file) {
      const error = new Error('No File')
      error.httpStatusCode = 400
      return next(error)
    }
    res.send(file);
  } catch (error) {
    next(error);
  }
};

function deleteFile(req, res, next) {
  try {
    const file = req.params.file;
    if (!file) {
      const error = new Error('El archivo no existe');
      error.httpStatusCode = 400;
      return next(error);
    } else {
      const filePath = path.resolve(getUploadFolder() + '/' + file) ;
      fs.unlink(filePath, (err) => {
        if (err) {
          return next(err);
        }
      });
      res.json({ success: true, message: "Se elimino el archivo " + file });    }
  } catch (error) {
    next(error);
  }
}

module.exports = {
  uploadFile,
  generateFileName,
  getUploadFolder,
  deleteFile
};
