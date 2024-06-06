var database = require("../database/config");


function listarMsc() {
  var instrucaoSql = `SELECT * FROM musica`;

  return database.executar(instrucaoSql);
}

module.exports = {listarMsc};
  