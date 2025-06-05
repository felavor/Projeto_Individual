var database = require("../database/config");

function buscarPontuacao() {
    
    console.log("Executando SQL:", instrucaoSql);

    var instrucaoSql = `
        SELECT 
            u.nome AS usuario, 
            r.respostas_certas AS questoesCertas
        FROM respostas_usuarios r
        INNER JOIN usuario u ON u.id = r.fkUsuario;
    `;
    return database.executar(instrucaoSql);
}

function inserirPontuacao(fkUsuario, fkQuiz, respostasCertas) {

    console.log("Executando SQL:", instrucaoSql);

    var instrucaoSql = `
        INSERT INTO respostas_usuarios (fkUsuario, fkQuiz, respostas_certas)
        VALUES (${fkUsuario}, ${fkQuiz}, ${respostasCertas})
        ON DUPLICATE KEY UPDATE respostas_certas = ${respostasCertas};
    `;
    console.log("Executando SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarPontuacao,
    inserirPontuacao
}