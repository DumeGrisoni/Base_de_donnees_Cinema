CREATE DATABASE Soft_Cine 
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci

------------------------------------------------

USE Soft_Cine;
CREATE TABLE cinemas (
  id INT(11) PRIMARY KEY AUTO_INCREMENT, 
  nom VARCHAR(255) NOT NULL,
  adresse VARCHAR(255)NOT NULL,
  nombre_salle INT(11),
  horaire_ouverture VARCHAR(255) NOT NULL
)
ENGINE=INNODB

------------------------------------------------

USE Soft_Cine;
CREATE TABLE salles 
(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  numero_de_salle INT(11) NOT NULL
)
ENGINE=INNODB

------------------------------------------------

USE Soft_Cine;
CREATE TABLE cinemas_salles 
(
  cinema_id INT(11) NOT NULL,
  salle_id INT(11) NOT NULL,
  PRIMARY KEY (cinema_id, salle_id),
  FOREIGN KEY (salle_id) REFERENCES salles(id),
  FOREIGN KEY (cinema_id) REFERENCES cinemas(id)
)
ENGINE=INNODB

------------------------------------------------

USE Soft_Cine;
CREATE TABLE seances 
(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  id_salle INT(11) NOT NULL,
  prix_plein DECIMAL(2,2) NOT NULL,
  prix_etudiant DECIMAL(2,2) NOT NULL,
  prix_moins_14 DECIMAL(2,2) NOT NULL,
  FOREIGN KEY (id_salle) REFERENCES salles(id)
)
ENGINE=INNODB

------------------------------------------------

USE Soft_Cine;
CREATE TABLE films 
(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  titre VARCHAR(255) NOT NULL,
  durée INT(11) NOT NULL,
  realisateur VARCHAR(255) NOT NULL
)
ENGINE=INNODB

------------------------------------------------

USE Soft_Cine;
CREATE TABLE Seances_Films 
(
  film_id INT(11) NOT NULL,
  seance_id INT(11) NOT NULL,
  PRIMARY KEY (film_id, seance_id),
  FOREIGN KEY (film_id) REFERENCES films(id),
  FOREIGN KEY (seance_id) REFERENCES seances(id)
)
ENGINE=INNODB

------------------------------------------------

USE Soft_Cine;
INSERT INTO cinemas (nom, nombre_salle, adresse, horaire_ouverture)
VALUES 
('UGC Ciné', 27, 'Cité les Halles', '8h-23h30'),
('Gaumont', 15, 'Aquaboulevard', '9h45-22h'),
('Pathé', 12, 'Wépler','8h-23h'),
('MK2', 20, 'Bibliothèque', '20h-00h00')

------------------------------------------------

USE Soft_Cine;
INSERT INTO salles (numero_de_salle)
VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10)

------------------------------------------------

USE Soft_Cine;
INSERT INTO films(titre, durée, realisateur)
VALUES 
('Shang-Chi et la Légende des Dix Anneaux', 132, ' Destin Daniel Cretton'),
('Matrix Resurrections', 145, 'Lana Wachowski'),
('Dune', 155, 'Denis Villeneuve'),
('Free Guy', 115, 'Shawn Levy')
