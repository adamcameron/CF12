component {

	function init(id,firstName,lastName){
		variables.id = id;
		variables.firstName = firstName;
		variables.lastName = lastName;
	}
	
	function getFullName(){
		return "#firstName# #lastName#";
	}

}