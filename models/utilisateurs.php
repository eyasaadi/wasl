<?PHP
class utilisateurs{

	private $id;
    private $nom;
    private $prenom;
    private $adresse;
    private $cin;
    private $email;
    private $role;
    private $tel;

	

	function __construct($id,$nom,$prenom,$adresse,$cin,$email,$role,$tel){
	    $this->id=$id;
        $this->nom=$nom;
        $this->prenom=$prenom;
        $this->adresse=$adresse;
        $this->cin=$cin;
        $this->email=$email;
        $this->role=$role;
        $this->tel=$tel;
	}



	function getid(){
		return $this->id;
	}

	function setid($id){
		$this->id=$id;
	}

    function getnom(){
		return $this->nom;
	}

	function setnom($nom){
		$this->id=$nom;
	}

    function getprenom(){
		return $this->prenom;
	}

	function setprenom($prenom){
		$this->prenom=$prenom;
	}

    
    function getadresse(){
		return $this->prenom;
	}

	function setadresse($adresse){
		$this->adresse=$adresse;
	}





    function getcin(){
		return $this->cin;
	}

	function setcin($cin){
		$this->cin=$cin;
	}
	


    function getemail(){
		return $this->email;
	}

	function setemail($email){
		$this->email=$email;
	}

    function getrole(){
		return $this->role;
	}

	function setrole($role){
		$this->role=$role;
	}

    function gettel(){
		return $this->tel;
	}

	function settel($tel){
		$this->tel=$tel;
	}
	
}

?>