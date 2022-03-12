<?php
define("SERVEUR", "localhost");
define("NOMBASE", "wasl");
define("USER", "root");
define("MDP", "");
$conn =mysqli_connect(SERVEUR, USER, MDP, NOMBASE);
if (mysqli_connect_error()) {
echo "Echec de la connexion" ; }
?>
