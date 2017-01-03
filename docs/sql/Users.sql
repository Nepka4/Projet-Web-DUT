DROP TABLE IF EXISTS Annonce, Ordonnance, Evenement, UtilisateurService, Service, Utilisateur;

CREATE TABLE Utilisateur (
	idUtilisateur int AUTO_INCREMENT PRIMARY KEY,
    login varchar(32),
    email varchar(32) NOT NULL UNIQUE,
    mdp varchar(12) NOT NULL,
	description text NOT NULL,
	dateNaiss date NOT NULL,
    type varchar(32) NOT NULL,
	avatar varchar(100) collate latin1_general_ci
);

CREATE TABLE Agenda (
	idAgenda int AUTO_INCREMENT NOT NULL,
	idUtilisateur int NOT NULL,
	FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur) ON DELETE CASCADE,
	PRIMARY KEY(idAgenda, idUtilisateur)
);

CREATE TABLE Evenement (
	idEvenement int AUTO_INCREMENT PRIMARY KEY,
	dateheure timestamp NOT NULL,
	resume varchar(255),
	idAgenda int NOT NULL,
	FOREIGN KEY(idAgenda) REFERENCES Agenda(idAgenda) ON DELETE CASCADE
);
    
CREATE TABLE Ordonnance (
    numOrdonnance int AUTO_INCREMENT NOT NULL,
    idUtilisateur int NOT NULL,
    FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur) ON DELETE CASCADE,
    PRIMARY KEY(numOrdonnance, idUtilisateur),
    dateValidite date NOT NULL
);

CREATE TABLE Service (
	idService int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	nom varchar(128) NOT NULL
);

CREATE TABLE UtilisateurService(
	idUtilisateur int NOT NULL,
	FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur) ON DELETE CASCADE,
	idService int NOT NULL,
	FOREIGN KEY(idService) REFERENCES Service(idService) ON DELETE CASCADE,
	disponible boolean NOT NULL
);

CREATE TABLE Annonce (
	idAnnonce int AUTO_INCREMENT PRIMARY KEY,
	demandeur int NOT NULL,
	FOREIGN KEY(demandeur) REFERENCES Utilisateur(idUtilisateur) ON DELETE CASCADE,
	lieu varchar(255) NOT NULL,
	prix int NOT NULL
);

Create Table Message (
	idMessage int AUTO_INCREMENT PRIMARY KEY,
	destinataire varchar(128) NOT NULL,
	emetteur varchar(128) NOT NULL,
	contenu text NOT NULL,	
	objet varchar(128) NOT NULL,
	lu boolean NOT NULL,	
	date_envoi timestamp NOT NULL,
	Foreign key(destinataire) references Utilisateur(login) on delete cascade,
	Foreign key(emetteur) references Utilisateur(login) on delete cascade
);

CREATE TABLE AnnonceSauv (
	idUtilisateur int NOT NULL,
	FOREIGN KEY(idUtilisateur) REFERENCES Utilisateur(idUtilisateur) ON DELETE CASCADE,
	idAnnonce int NOT NULL,
	FOREIGN KEY(idAnnonce) REFERENCES Annonce(idAnnonce) ON DELETE CASCADE,
	Primary Key (idAnonce,idUtilisateur)
	
);
