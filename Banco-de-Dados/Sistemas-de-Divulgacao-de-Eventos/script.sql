CREATE DATABASE mufest;
USE mufest;

CREATE TABLE usuario (
    usuarioID INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE tipo_usuario (
    tipoID INT AUTO_INCREMENT PRIMARY KEY,
    descricao ENUM('administrador', 'usuario') NOT NULL,
    usuarioID INT,
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID)
);

CREATE TABLE evento (
    eventoID INT AUTO_INCREMENT PRIMARY KEY,
    usuarioID INT,
    nomeevento VARCHAR(100) NOT NULL,
    dataevento DATETIME NOT NULL,
    localevento VARCHAR(100),
    tipoevento ENUM('FESTA', 'FESTA UNIVERSITÁRIA', 'TEATRO', 'COMÉDIA', 'MUSEU', 'EXPOSIÇÃO', 'SHOW', 'ACADÊMICO') NOT NULL,
    descricaoevento TEXT,
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID)
);

CREATE TABLE denuncia (
    denunciaID INT AUTO_INCREMENT PRIMARY KEY,
    usuarioID INT,
    eventoID INT,
    descricao TEXT,
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID),
    FOREIGN KEY (eventoID) REFERENCES evento(eventoID)
);


CREATE TABLE avaliacao (
    avaliacaoID INT AUTO_INCREMENT PRIMARY KEY,
    usuarioID INT,
    eventoID INT,
    nota INT CHECK (nota BETWEEN 1 AND 10),
    FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID),
    FOREIGN KEY (eventoID) REFERENCES evento(eventoID)
);

SELECT * FROM usuario;
SELECT * FROM evento;
SELECT * FROM denuncia;
SELECT * FROM avaliacao