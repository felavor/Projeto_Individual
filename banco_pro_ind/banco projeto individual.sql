create database projeto_individual;

use projeto_individual;

create table usuario (
id		int primary key auto_increment,
nome	varchar(50),
email	varchar(100),
senha	varchar(30)
);

create table quiz (
id			int primary key auto_increment,
pontuacao	int,
dataHora	timestamp default current_timestamp
) auto_increment = 100;

