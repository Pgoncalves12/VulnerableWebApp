CREATE SCHEMA IF NOT EXISTS Forum CHARACTER SET utf8;

CREATE TABLE IF NOT EXISTS Forum.Usuario(
	IdUsuario INT NOT NULL AUTO_INCREMENT,
    Login VARCHAR(15) NOT NULL,
    Nome VARCHAR(40) NOT NULL,
    Senha VARCHAR(40) NOT NULL,
    Foto VARCHAR(20) NOT NULL,
    PRIMARY KEY(IdUsuario),
    INDEX(Login)
);

CREATE TABLE IF NOT EXISTS Forum.Post(
	IdPost INT NOT NULL AUTO_INCREMENT,
    IdUsuario INT NOT NULL,
    Mensagem VARCHAR(100) NOT NULL,
    PRIMARY KEY(IdPost, IdUsuario),
    CONSTRAINT fk_id_usuario
		FOREIGN KEY(IdUsuario)
        REFERENCES Forum.Usuario(IdUsuario)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);