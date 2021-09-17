CREATE DATABASE Soft_Cine 
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_general_ci

------------------------------------------------

USE Soft_Cine;
CREATE TABLE cinemas (
  id INT(11) PRIMARY KEY AUTO_INCREMENT, 
  nom VARCHAR(255) NOT NULL,
  nombre_salle INT(11),
  horaire_ouverture VARCHAR(255) NOT NULL
)
ENGINE=INNODB

------------------------------------------------

CREATE TABLE salles 
(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  numero_de_salle INT(11) NOT NULL
)
ENGINE=INNODB

------------------------------------------------

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

CREATE TABLE films 
(
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
  titre VARCHAR(255) NOT NULL,
  durée INT(11) NOT NULL,
  realisateur VARCHAR(255) NOT NULL
)
ENGINE=INNODB

------------------------------------------------

CREATE TABLE Seances_Films 
(
  film_id INT(11) NOT NULL,
  seance_id INT(11) NOT NULL,
  PRIMARY KEY (film_id, seance_id),
  FOREIGN KEY (film_id) REFERENCES films(id),
  FOREIGN KEY (seance_id) REFERENCES seances(id)
)
ENGINE=INNODB

