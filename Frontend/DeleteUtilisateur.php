<?PHP
	include "../config.php";
	include "../Models/utilisateurs.php";
	include "../Controllers/utilisateurController.php";

    
    
    
    
if ( isset($_GET['id']))
{

    $utilisateurController=new utilisateurController();
    $utilisateurController->supprimerutilisateur($_GET['id']);
			
    header('Location: utilisateurs.php');
    //ob_end_clean();

}else{
    echo "verifier les champs";
}		

//*/

?>