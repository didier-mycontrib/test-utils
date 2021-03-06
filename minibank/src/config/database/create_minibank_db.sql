
CREATE DATABASE IF NOT EXISTS minibank_db_ex1;
USE minibank_db_ex1;

DROP TABLE IF EXISTS ClientCompte;
DROP TABLE IF EXISTS Operation;
DROP TABLE IF EXISTS Compte;
DROP TABLE IF EXISTS Client;
DROP TABLE IF EXISTS Adresse;



######################## CREATE  TABLE ########################################

CREATE TABLE Client(
	nom VARCHAR(64),
	prenom VARCHAR(64),
	numClient integer auto_increment,
	dateNaissance DATE,
	telephone VARCHAR(16),
	email VARCHAR(64),
	ref_adressePrincipale integer,
	password VARCHAR(64),
	PRIMARY KEY(numClient));	 

CREATE TABLE Adresse(
	codePostal VARCHAR(64),
	ville VARCHAR(64),
	rue VARCHAR(64),
	idAdr integer auto_increment,
	
	PRIMARY KEY(idAdr));	 


CREATE TABLE Compte(
	label VARCHAR(64),
	numCpt integer auto_increment,
	solde double,
	PRIMARY KEY(numCpt));	 

CREATE TABLE Operation(
	label VARCHAR(64),
	montant double,
	numOp integer auto_increment,
	dateOp DATE,
	ref_compte integer,
	PRIMARY KEY(numOp));	 
	
CREATE TABLE ClientCompte(
	numCli integer,
	numCpt integer,
	PRIMARY KEY(numCli,numCpt));



#######################   FOREIGN KEY       ####################################

ALTER TABLE Client ADD CONSTRAINT Client_avec_adressePrincipale_valide 
FOREIGN KEY (ref_adressePrincipale) REFERENCES Adresse(idAdr);



ALTER TABLE ClientCompte ADD CONSTRAINT ClientCompte_avec_client_valide 
FOREIGN KEY (numCli) REFERENCES Client(numClient);
ALTER TABLE ClientCompte ADD CONSTRAINT ClientCompte_avec_compte_valide 
FOREIGN KEY (numCpt) REFERENCES Compte(numCpt);


ALTER TABLE Operation ADD CONSTRAINT Operation_avec_compte_valide 
FOREIGN KEY (ref_compte) REFERENCES Compte(numCpt);





