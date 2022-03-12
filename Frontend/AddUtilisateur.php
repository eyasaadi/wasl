<?PHP
	include "../config.php";
	include "../Models/utilisateurs.php";
	include "../Controllers/utilisateurController.php";

    
    
    
    
if ( isset($_POST['nom']) and isset($_POST['prenom']) and isset($_POST['role'])  and isset($_POST['adresse'])  and isset($_POST['cin'])  and isset($_POST['email'])  and isset($_POST['tel']) )
{

    $utilisateur=new utilisateurs(0,$_POST['nom'],$_POST['prenom'],$_POST['adresse'],$_POST['cin'],$_POST['email'],$_POST['role'],$_POST['tel']);

    $utilisateurController=new utilisateurController();
    $utilisateurController->ajouterutilisateur($utilisateur);
			
    header('Location: utilisateurs.php');
    //ob_end_clean();

}else{
    echo "verifier les champs";
}		

//*/

?>