var musicaModel = require("../models/musicaModel");

function listarMsc(req, res) {
  musicaModel.listarMsc().then((resultado) => {
    res.status(200).json(resultado);
  });
}

module.exports = {
  listarMsc
};

