<?php 
/* récupération du paramètre */
$titre = htmlspecialchars($_GET['mot_du_titre']) ;


/* connexion */
try
{   
    $bdd = new PDO('mysql:host=localhost;dbname=bibli;charset=utf8', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    $bdd->query("SET NAMES utf8"); /* pour éviter les pbs d'encodage */
}
catch(Exception $e)
{
        die('Erreur : '.$e->getMessage());
}

/* définition de la variable $reponse_mot_du_titre  grâce à une requête SQL */

    $req = $bdd->prepare('SELECT * FROM `livre` WHERE `titre` LIKE :titre');
    $titre = "%".$titre."%";
    $req->bindParam(':titre', $titre, PDO::PARAM_STR);
    $req->execute();
    $reponse_mot_du_titre = $req->fetchAll(PDO::FETCH_ASSOC);
?>
<!doctype html>
<html>
 <head>
     <title>
        Titres trouvés
     </title>
     <meta charset="utf8">
 </head>
 <body>
    <?php if (count($reponse_mot_du_titre) == 0){
         echo "<h2>Pas de titre trouvé</h2>";
     }
     else {
        echo "<h2>Titres trouvés : </h2>";
     }
    ?>
     <ul>
         <?php foreach($reponse_mot_du_titre as $element) : ?>
            <li> <?= $element["titre"]  ?></li>
         <?php endforeach ;?>
     </ul>
 </body>
</html>


