var dadosdashModel = require("../models/dadosdashModel");

function buscarDadosDash(req, res) {
    dadosdashModel.buscarPontuacao()
        .then(function (resultado) {
            if (resultado.length > 0) {
                res.status(200).json(resultado);
            } else {
                res.status(204).send("Nenhum resultado encontrado!");
            }
        })
        .catch(function (erro) {
            console.log(erro);
            console.log("Houve um erro ao buscar os dados do dashboard.", erro.sqlMessage);
            res.status(500).json(erro.sqlMessage);
        });
}

function registrarPontuacao(req, res) {
    
    var fkUsuario = req.body.fkUsuario;
    var fkQuiz = req.body.fkQuiz;
    var respostasCertas = req.body.respostasCertas;

    console.log("Recebido:", req.body);

    if (fkUsuario == undefined || fkQuiz == undefined || respostasCertas == undefined) {
        res.status(400).send("Campos obrigatórios não foram preenchidos!");
    } else {
        dadosdashModel.inserirPontuacao(fkUsuario, fkQuiz, respostasCertas)
            .then(function (resultado) {
                res.status(200).json(resultado);
            })
            .catch(function (erro) {
                console.log(erro);
                console.log("Houve um erro ao registrar pontuação.", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            });
    }
}

module.exports = {
    buscarDadosDash,
    registrarPontuacao
};