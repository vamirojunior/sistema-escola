CREATE DATABASE educonnect
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE educonnect;

CREATE TABLE usuarios (

    id_usuario INT AUTO_INCREMENT PRIMARY KEY,

    nome VARCHAR(120),

    email VARCHAR(120),

    senha VARCHAR(255),

    perfil ENUM('Administrador','Professor','Aluno')

);

CREATE TABLE cursos(

    id_curso INT AUTO_INCREMENT PRIMARY KEY,

    nome VARCHAR(100),

    carga_horaria INT

);

CREATE TABLE turmas(

    id_turma INT AUTO_INCREMENT PRIMARY KEY,

    nome VARCHAR(20),

    semestre INT,

    ano INT,

    id_curso INT,

    FOREIGN KEY(id_curso)

    REFERENCES cursos(id_curso)

);