<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
  <head>
    <title>MEC1310: Laboratoire 6</title>
    <META http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <style type="text/css">
      
      <!--=====================================================-->
      <!-- Ici les specifications des styles pour les balises  -->
      <!--=====================================================-->
      
    </style>
  </head>
  <body>
    
<?php
$a=$_POST['variable_texte'];
echo "<p>$a</p>";
print "<p>$a</p>";

echo '<p>$a</p>';
print '<p>$a</p>';

echo '<p>'.$a.'</p>';
print '<p>'.$a.'</p>';

$le_sexe=$_POST['genre'];
$variable_mois=$_POST['mois'];
// echo gettype($variable_mois)."\n"; 
echo "<p> le sexe est : $le_sexe</p>";
echo "<p> le mois est : $variable_mois</p>";

$talbeau= array('1'=>'Janvier',
				'2'=> 'Février',
				'3'=> 'Mars',
				4=> 150000,
				'texte'=>'un mot random');

echo "<p> le mois est : $talbeau[$variable_mois]</p>";

/* 	$variablenom=$_POST['variable_texte'];
	// $_GET['variable_texte'];
echo "<p>Bonjours bienvenu</p>";
print "<h2>Vous etes $variablenom</h2>";

	$variable_genre=$_POST['genre'];
	
echo "<p>Vous est un/e $variable_genre</p>";

$variable_mois=$_POST[mois];
echo "Le mois numero $variable_mois";	

	$a= array('1'=> 'Janvier',
			  '2'=> 5984,
			  '3'=> 'Septembre'
	);

echo "Vous avez choisis le mois $a[$variable_mois]";

	$b=$a[$variable_mois]*2;
	echo "<p>$b</p>"
 */
?>


  </body>
</html>
