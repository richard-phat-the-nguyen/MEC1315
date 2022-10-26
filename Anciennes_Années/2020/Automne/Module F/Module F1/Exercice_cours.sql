
CREATE TABLE constructeurs
	(
	nomCompagnie VARCHAR(35) NOT NULL,
	idConstructeur INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	type ENUM('motoriste', 'avionneur','systemes') NOT NULL,
	pays VARCHAR(15) NOT NULL
	)
	;
	
CREATE TABLE constructeurs
(
	nomCompagnie VARCHAR(35) NOT NULL ,
	idConstructeur INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	type ENUM('motoriste','avionneur','systemes') NOT NULL,
	ville VARCHAR(15) NOT NULL ,
	pays VARCHAR(15) NOT NULL
)


SELECT * FROM Cours WHERE credits=1;

SELECT * FROM Cours WHERE credits>1;

SELECT * FROM Cours WHERE sigle like '%GCH%';

SELECT * FROM Cours WHERE sigle like '%GCH%' AND credits>2;

SELECT * FROM Cours WHERE sigle like '%GCH%' AND credits>2 ORDER BY intitule;
SELECT * FROM Cours WHERE sigle like '%GCH%' AND credits>2 ORDER BY intitule DESC;





SELECT count(*) FROM Cours;
SELECT count(*),credits FROM Cours GROUP BY credits;

SELECT count(*) as 'Nombre de cours',credits FROM Cours GROUP BY credits;
SELECT * FROM Cours where credits=15;


-- Si je veux selectionner les sigles des cours et qui sont les enseignants qui le donne


SELECT Cours.sigle, groupe, professeur FROM Cours, Sections; 

SELECT  groupe, professeur FROM  Sections GROUP BY sigle; 
SELECT  groupe, professeur FROM  Sections GROUP BY sigle ORDER BY professeur; 

SELECT  COUNT(groupe) as 'Quantité', professeur FROM  Sections GROUP BY professeur ORDER BY professeur; 







SELECT Horaires.sigle, local, credits from Horaires, Cours ;

SELECT Horaires.sigle, local, credits from Horaires, Cours WHERE Horaires.sigle=Cours.sigle;
SELECT Horaires.sigle, local, credits from Horaires, Cours WHERE Horaires.sigle=Cours.sigle GROUP BY local;




USE auto2014;

SELECT marque, web, prix_base, modele FROM Marques, Modeles WHERE Marques.id=ref_Marque;

-- Notation moins lourds



















