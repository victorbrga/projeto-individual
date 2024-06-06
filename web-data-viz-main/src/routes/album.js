var express = require("express");
var router = express.Router();

var albumController = require("../controllers/albumController");

router.get("/listarAlbum", function (req, res) {
  albumController.listarAlbum(req, res);
});

module.exports = router;