var express = require("express");
var router = express.Router();

var dadosdashController = require("../controllers/dadosdashController");


router.post("/registrarPontuacao", function (req, res) {
    dadosdashController.registrarPontuacao(req, res);
});

router.get("/buscarDados", function (req, res) {
    dadosdashController.buscarDadosDash(req, res);
});

module.exports = router;