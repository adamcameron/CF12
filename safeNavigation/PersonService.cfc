component {

	public function getById(id){
		if (id MOD 2){ // fake validity of ID
			return new Person(id, "Brendon", "McCullum");
		}
		// not a great example
	}

}