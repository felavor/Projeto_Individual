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
    descricao TEXT,
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    perguntas TEXT
);

INSERT INTO quiz (descricao, perguntas) VALUES
('Quiz sobre Veigh', 'Qual dessas músicas, pertence ao Álbum Dos Prédios?'),
('Quiz sobre Veigh', 'Qual dessas músicas, pertence ao Álbum Dos Prédios Deluxe?'),
('Quiz sobre Veigh', 'Qual estilo musical predomina nas músicas do Veigh?'),
('Quiz sobre Veigh', 'Qual o nome de sua gravadora?'),
('Quiz sobre Veigh', 'O Veigh possui aproximadamente, quantos ouvintes mensais?'),
('Quiz sobre Veigh', 'Com qual artista internacional, Veigh realizou seu primeiro ft.'),
('Quiz sobre Veigh', 'Veigh já fez uma música relacionada um time de e-Sports, qual time é esse?'),
('Quiz sobre Veigh', 'A música Os mlk é ruim pertence à qual tipo musical?'),
('Quiz sobre Veigh', 'De quais álbuns abaixo o Veigh NÃO participou?'),
('Quiz sobre Veigh', 'Qual o nome da mãe do Veigh?');


CREATE TABLE respostas_usuarios (
    fkUsuario INT,
    fkQuiz INT,
    repostas_certas INT,
    primary key (fkUsuario, fkQuiz),
    foreign key (fkUsuario) references usuario(id),
    foreign key (fkQuiz) references quiz(id)
);

select * from usuario;
select * from quiz;
select * from respostas_usuarios;