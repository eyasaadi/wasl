<?php
include ("connexion.php");
$requete = "INSERT INTO donneeseleves VALUES
('".$_POST['id']."','".$_POST['nom']."','".$_POST['prenom']."','".$_POST['age']."','".$_POST['genre']."',
  '".$_POST['parent']."','".$_POST['avs']."','".$_POST['adresse']."','".$_POST['niveau']."')";
$reponse = mysqli_query($conn,$requete);
if($reponse)
header("location:ajouter_eleve.php");
else echo "error";
?>
