DROP DATABASE if EXISTS Garage;
CREATE DATABASE Garage;
USE Garage;

CREATE TABLE voiture (
	id_voiture 	INT NOT NULL AUTO_INCREMENT,
	kilometrage INT NOT NULL,
	marque 		VARCHAR(50) NOT NULL,
	modele 		VARCHAR(50) NOT NULL,
	prix 			INT NOT NULL,
	CONSTRAINT voiture_PK PRIMARY KEY (id_voiture)
);

CREATE TABLE clients (
	id_client	INT NOT NULL AUTO_INCREMENT,
	nom	 		VARCHAR(50) NOT NULL,
	prenom	 	VARCHAR(50) NOT NULL,
	adresse	 	VARCHAR(50) NOT NULL,
	CONSTRAINT clients_PK PRIMARY KEY (id_client)
);

CREATE TABLE vente (
	id_voiture 	INT NOT NULL,
	id_client 	INT NOT NULL,
	prix_vente	INT NOT NULL,
	date_vente 	DATETIME NOT NULL,
	CONSTRAINT vente_PK PRIMARY KEY (id_voiture,id_client),
	CONSTRAINT vente_voiture_FK FOREIGN KEY (id_voiture) REFERENCES voiture(id_voiture),
	CONSTRAINT vente_clients_FK FOREIGN KEY (id_client) REFERENCES clients(id_client)
);