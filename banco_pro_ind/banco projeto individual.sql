create database projeto_individual;
use projeto_individual;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50)
);

CREATE TABLE quiz (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    perguntas TEXT,
    correta BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE respostas_usuarios (
    fkUsuario INT,
    fkQuiz INT,
    respostas_certas INT,
    primary key (fkUsuario, fkQuiz),
    foreign key (fkUsuario) references usuario(id),
    foreign key (fkQuiz) references quiz(id)
);