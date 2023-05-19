CREATE DATABASE AchadosPerdidos;
USE AchadosPerdidos;


CREATE TABLE Livro
(
    ID        int         NOT NULL AUTO_INCREMENT,
    Titulo    varchar(30) NOT NULL,
    Ano       int         NOT NULL,
    Autor     varchar(100)
    PRIMARY KEY (ID)

);

CREATE TABLE Usuario
(
    CPF       varchar(14) NOT NULL,
    Nome      varchar(50) NOT NULL,
    Rua       varchar(50) NOT NULL,
    Bairro    varchar(30) NOT NULL,
    CEP       varchar(9)  NOT NULL,
    Cidade    varchar(20) NOT NULL,
    Telefone1 varchar(9)  NOT NULL,
    Telefone2 varchar(9)  NOT NULL,
    PRIMARY KEY (CPF)
);

CREATE TABLE Pedido
(
    ID         int         NOT NULL AUTO_INCREMENT,
    Data       datetime    NOT NULL,
    IDLivro    int         NOT NULL,
    CPFUsuario varchar(14) NOT NULL,
    PRIMARY KEY (ID),
    CONSTRAINT FK_LivroPedido FOREIGN KEY (IDLivro) REFERENCES Livro (ID),
    CONSTRAINT FK_UsuarioPedido FOREIGN KEY (CPFUsuario) REFERENCES Usuario (CPF)
);


INSERT INTO Editora (Nome)
VALUES ("Editora Qualquer");

INSERT INTO Genero (Nome)
VALUES ("Fantasia");

INSERT INTO Autor (Nome)
VALUES ("JRR Tolkien");

INSERT INTO Livro (Titulo, IDAutor, IDGenero, IDEditora, Ano)
VALUES ('Senhor dos Anéis',
        '1',
        '1',
        '1',
        '1968');

INSERT INTO Usuario (CPF, Nome, Rua, Bairro, Cidade, CEP, Telefone1, Telefone2)
VALUES ('123.456.789-00',
        'Huguinho',
        'Rua Qualquer',
        'Bairro Qualquer',
        'João Pessoa',
        '58000-000',
        '981111111',
        '982222222');

INSERT INTO Pedido (Data, IDLivro, CPFUsuario)
VALUES (NOW(),
        '1',
        '123.456.789-00');