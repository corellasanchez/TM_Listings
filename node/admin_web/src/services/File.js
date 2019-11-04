import api from "./Api";
const path = '/file/';

function deleteFile(fileName) {
  return api.delete(`${path}${fileName}`).then(res => res).catch(err => err.response);
}

export default {
  deleteFile
}