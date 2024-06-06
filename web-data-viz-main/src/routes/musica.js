var express = require("express");
var router = express.Router();

var musicaController = require("../controllers/musicaController");

router.get("/listarMsc", function (req, res) {
  musicaController.listarMsc(req, res);
});

module.exports = router;