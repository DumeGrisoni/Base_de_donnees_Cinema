# Base_de_donnees_Evaluation_04_Studi_Dominique_Grisoni

## Déploie de la base de donnée

Afin de déployer la base de donnée se trouvant dans le ficher BDD.sql veuillez suivre ses étapes:
  1. Copier le bloc de code entre chaque zones délimitée par des tirets.
  2. Coller le dans l'éditeur de code de votre base de données.
  2. Executer.



## Comprehension des lignes de code

* Le premier bloc de code crée la base de donnée nommée __"Soft_Cine"__.
* Le second jusqu'au sixième, permetent de créer une __table__ ou __entité__ qui comprend les differentes proprietés tel que *le nom* ou *l'identifiant* (id).
* les autres blocs créent des données fictives tel qu'un cinéma, un film ou une liste de salles.

_L'ordre de création des tables est important car certaines tables se réferent sur d'autres_ __Merci de suivre cet ordre d'execution__.



## Ajout de données

Afin d'ajouter des données dans votre base il faut, comme les bloc de code situés dans le fichier __BDD.sql__, écrire les lignes de code suivant:
  1. USE Soft_Cine;
  2. INSERT INTO "la table souhaitée ( ex: cinemas)" puis ("le nom des propriétés (ex : nom, adresse..."))
  3. VALUES ("les valeures voulues entre guillemets suivis par une virgule(ex:"Gaumont", "Rue du Chapiteau")).



## Suppression d'une donnée

Pour supprimer une donnée utilisez la ligne de code suivante : 
* __USE Soft_Cine;__
* __DELETE FROM__ "nom de la ligne souhaitée"
* __WHERE__ "ajouter une condition comme le nom, l'id ou autre.



