const express = require('express');
const file = express.Router();
const multer = require('multer');
const path = require('path');
const { verifyToken } = require('../helpers/security');
const fileController = require('../controllers/file');

const storage = multer.diskStorage({
  destination: path.resolve(fileController.getUploadFolder()),
  filename: (req, file, callBack) => {
    callBack(null, fileController.generateFileName(file.originalname))
  }
})

const upload = multer({ storage: storage })

file.post('/', verifyToken, upload.single('file'), fileController.uploadFile);
file.delete('/:file', verifyToken, fileController.deleteFile);


module.exports = file;
