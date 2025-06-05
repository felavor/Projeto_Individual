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
    perguntas TEXT
);

INSERT INTO quiz (perguntas) VALUES
('Qual dessas músicas, pertence ao Álbum Dos Prédios?'),
('Qual dessas músicas, pertence ao Álbum Dos Prédios Deluxe?'),
('Qual estilo musical predomina nas músicas do Veigh?'),
('Qual o nome de sua gravadora?'),
('O Veigh possui aproximadamente, quantos ouvintes mensais?'),
('Com qual artista internacional, Veigh realizou seu primeiro ft.'),
('Veigh já fez uma música relacionada um time de e-Sports, qual time é esse?'),
('A música Os mlk é ruim pertence à qual tipo musical?'),
('De quais álbuns abaixo o Veigh NÃO participou?'),
('Qual o nome da mãe do Veigh?');


CREATE TABLE respostas_usuarios (
    fkUsuario INT,
    fkQuiz INT,
    respostas_certas INT,
    primary key (fkUsuario, fkQuiz),
    foreign key (fkUsuario) references usuario(id),
    foreign key (fkQuiz) references quiz(id)
);

select * from usuario;
select * from quiz;
select * from respostas_usuarios;