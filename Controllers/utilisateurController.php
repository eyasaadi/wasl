<?PHP
class utilisateurController {

	function ajouterutilisateur($user){

        
		$sql="INSERT INTO utilisateurs (nom,prenom,adresse,cin,email,role,tel) VALUES (:nom,:prenom,:adresse,:cin,:email,:role,:tel)";
		$db = config::getConnexion();
		try{
        $req=$db->prepare($sql);
	

        $nom=$user->getnom(); //get values from user 
        $prenom=$user->getprenom();
        $adresse=$user->getadresse();
        $cin=$user->getcin();
        $email=$user->getemail();
        $role=$user->getrole();
        $tel=$user->gettel();

	

        $req->bindValue(':nom',$nom); //prevent from sql injection 
        $req->bindValue(':prenom',$prenom); //add vallues to sql command
        $req->bindValue(':adresse',$adresse);
        $req->bindValue(':cin',$cin);
        $req->bindValue(':email',$email);
        $req->bindValue(':role',$role);
        $req->bindValue(':tel',$tel);

			
            $req->execute();
           
        }
        catch (Exception $e){
            echo 'Erreur: '.$e->getMessage();
        }
		
	}
	
	function afficherutilisateurs(){

		$sql="SELECT * FROM utilisateurs";
		$db = config::getConnexion();
		try{
		$liste=$db->query($sql);
		return $liste;
		}
        catch (Exception $e){
            die('Erreur: '.$e->getMessage());
        }	
	}
	function supprimerutilisateur($id){
		$sql="DELETE FROM utilisateurs where id= :id";
		$db = config::getConnexion();
        $req=$db->prepare($sql);
		$req->bindValue(':id',$id);
		try{
            $req->execute();
           // header('Location: index.php');
        }
        catch (Exception $e){
            die('Erreur: '.$e->getMessage());
        }
	}
	function modifierutilisateur($user,$id){

		$sql="UPDATE utilisateurs SET nom=:nom,prenom=:prenom,adresse=:adresse,cin=:cin,email=:email,role=:role,tel=:tel WHERE id=:id";
		$db = config::getConnexion();
        try{		
                $req=$db->prepare($sql);
                $nom=$user->getnom(); //get values from user 
                $prenom=$user->getprenom();
                $adresse=$user->getadresse();
                $cin=$user->getcin();
                $email=$user->getemail();
                $role=$user->getrole();
                $tel=$user->gettel();
        
            
        
                $req->bindValue(':id',$id); 

                $req->bindValue(':nom',$nom); //prevent from sql injection 
                $req->bindValue(':prenom',$prenom); //add vallues to sql command
                $req->bindValue(':adresse',$adresse);
                $req->bindValue(':cin',$cin);
                $req->bindValue(':email',$email);
                $req->bindValue(':role',$role);
                $req->bindValue(':tel',$tel);
            
                $s=$req->execute();
                    
                // header('Location: index.php');
                }
                catch (Exception $e){
                    echo " Erreur ! ".$e->getMessage();
                }
		
	}


	function recupererutilisateur($id){

		$sql="SELECT * from utilisateurs where id=$id";
		$db = config::getConnexion();

		try{
		$user=$db->query($sql);
		return $user->fetch();
		}
        catch (Exception $e){
            die('Erreur: '.$e->getMessage());
        }
	}

	


}





?>