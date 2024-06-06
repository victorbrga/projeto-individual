var database = require("../database/config");


function listarAlbum() {
  var instrucaoSql = `SELECT * FROM album`;

  return database.executar(instrucaoSql);
}

module.exports = {listarAlbum};
  