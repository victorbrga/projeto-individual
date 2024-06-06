var albumModel = require("../models/albumModel");

function listarAlbum(req, res) {
  albumModel.listarAlbum().then((resultado) => {
    res.status(200).json(resultado);
  });
}

module.exports = {
  listarAlbum
};

