INSERT INTO Service(nom) VALUES ('Bricolage - Travaux'), ('Jardinage - Piscine'), ('Déménagement - Manutention'),
('Dépannage - Réparation de matériel'), ('Entretien - Réparation véhicules'), ('Services véhiculés'), ('Services à la personne'),
('Enfants'), ('Animaux'), ('Informatique et web'), ('Photographie - Vidéo'), ('Animation - Evénements'), ('Cours- Formations'), 
('Administratif - Bureautique'), ('Mode - Santé - Bien être'), ('Sport - Partenaires'), ('Restaurant - Réception');

INSERT INTO Utilisateur(login, email, mdp, description, dateNaiss, type) VALUES 
('Dorian', 'dorian@email.fr', 'mdp', 'Ceci est une description', '1997-12-10', 'type'), 
('Loic', 'loic@email.fr', 'mdp', 'Ceci est également une description', '1996-06-02', 'type');

INSERT INTO UtilisateurService VALUES
(1, 1, true),
(1, 2, false),
(1, 3, false),
(1, 4, true),
(2, 1, false),
(2, 2, true),
(2, 3, false),
(2, 4, true);