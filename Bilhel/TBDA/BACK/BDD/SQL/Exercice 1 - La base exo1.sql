DROP DATABASE IF EXISTS Exo;

CREATE DATABASE Exo; 

USE Exo;

CREATE TABLE clients
(
	cli_num     INT NOT NULL AUTO_INCREMENT,
	cli_nom     VARCHAR (50) NOT NULL,
	cli_adresse VARCHAR (50) NOT NULL,
	cli_tel     VARCHAR (30) NOT NULL
	,CONSTRAINT cli_num PRIMARY KEY (cli_num)
);

CREATE TABLE commande
(
   com_num     INT NOT NULL AUTO_INCREMENT,
	cli_num     INT NOT NULL,
   com_date    DATETIME NOT NULL,
	com_obs     VARCHAR (50) NOT NULL
	,CONSTRAINT com_num PRIMARY KEY (com_num)
   ,CONSTRAINT commande_clients_FK FOREIGN KEY (cli_num) REFERENCES clients(cli_num)

);

CREATE TABLE produit
(
   pro_num         INT NOT NULL AUTO_INCREMENT,
	pro_libelle     VARCHAR (50) NOT NULL,
   pro_description VARCHAR (50) NOT NULL
	,CONSTRAINT pro_num PRIMARY KEY (pro_num)
);

CREATE TABLE est_compose
(
   com_num	INT NOT NULL,
	pro_num 	INT NOT NULL,
   est_qte	INT NOT NULL
   ,CONSTRAINT est_compose_PK PRIMARY KEY (com_num,pro_num)
   ,CONSTRAINT est_compose_commande_FK FOREIGN KEY (com_num) REFERENCES commande(com_num)
   ,CONSTRAINT est_compose_produit_FK FOREIGN KEY (pro_num) REFERENCES produit(pro_num)
);

CREATE INDEX index_exo ON clients (cli_nom);
SHOW INDEX from clients