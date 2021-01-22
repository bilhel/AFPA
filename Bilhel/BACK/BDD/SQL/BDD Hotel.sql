DROP DATABASE IF EXISTS Hotel;

CREATE DATABASE Hotel; 

USE Hotel;

CREATE TABLE station
(
   num_station INT NOT NULL AUTO_INCREMENT,
	nom_station VARCHAR (50) NOT NULL
	,CONSTRAINT num_station PRIMARY KEY (num_station)
);

CREATE TABLE hotel1
(
   num_hotel 			INT NOT NULL AUTO_INCREMENT,
   categorie_hotel 	VARCHAR (50) NOT NULL,
   nom_hotel 			VARCHAR (50) NOT NULL,
	adresse_hotel 		VARCHAR (50) NOT NULL,
   capacite_hotel 	INT NOT NULL,
   num_station 		INT NOT NULL
   ,CONSTRAINT num_hotel PRIMARY KEY (num_hotel)
   ,CONSTRAINT hotel1_station_FK FOREIGN KEY (num_station) REFERENCES station(num_station)
);

CREATE TABLE chambre
(
   capacite_chambre 	INT NOT NULL,
   degre_confort 		INT NOT NULL,
   exposition 			INT NOT NULL,
   type_chambre 		INT NOT NULL,
   num_chambre 		INT NOT NULL AUTO_INCREMENT,
   num_hotel			INT NOT NULL
   ,CONSTRAINT chambre_PK PRIMARY KEY (num_chambre)
   ,CONSTRAINT chambre_hotel1_FK FOREIGN KEY (num_hotel) REFERENCES hotel1(num_hotel)
);

CREATE TABLE clients
(
   adresse_client VARCHAR (50) NOT NULL,
   nom_client 		VARCHAR (50) NOT NULL,
   prenom_client 	VARCHAR (50) NOT NULL,
   num_client 		INT NOT NULL AUTO_INCREMENT
   ,CONSTRAINT clients_PK PRIMARY KEY (num_client)
);

CREATE TABLE reservation
(
	num_chambre 	INT NOT NULL,
	num_client 		INT NOT NULL,
   date_debut 		DATE NOT NULL,
   date_fin 		DATE NOT NULL,
   montant_arrhes INT NOT NULL,
   prix_total 		INT NOT NULL
   ,CONSTRAINT reservation_PK PRIMARY KEY (num_chambre,num_client)
   ,CONSTRAINT reservation_chambre_FK FOREIGN KEY (num_chambre) REFERENCES chambre(num_chambre)
   ,CONSTRAINT reservation_clients_FK FOREIGN KEY (num_client) REFERENCES clients(num_client)
);

CREATE USER 'util1'@'%' IDENTIFIED BY 'BLH1';
CREATE USER 'util2'@'%' IDENTIFIED BY 'BLH2';
CREATE USER 'util3'@'%' IDENTIFIED BY 'BLH3';

GRANT ALL PRIVILEGES ON hotel.* TO 'util1'@'%'
IDENTIFIED BY 'BLH';

GRANT SELECT ON hotel.* TO 'util2'@'%'
IDENTIFIED BY 'BLH2';

GRANT SHOW VIEW
ON hotel.station
TO util3
IDENTIFIED BY 'BLH3';

SHOW GRANTS FOR 'util1'@'%';
SHOW GRANTS FOR 'util2'@'%';
SHOW GRANTS FOR 'util3'@'%';