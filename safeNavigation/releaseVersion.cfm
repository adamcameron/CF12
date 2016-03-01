<cfscript>
	param integer URL.id;

	person = new PersonService().getById(URL.id);
	
	writeOutput("dot operator<br>");
	try {
		writeOutput("Full name: #person.getFullName()#<br>");
	} catch (any e){
		writeOutput("ERROR: #e.message#<br>");
	}
	
	writeOutput("<hr>Safe navigation operator<br>");
	try {
		writeOutput("Full name: #person?.getFullName()#<br>");
	} catch (any e){
		writeOutput("ERROR:  #e.message#<br>");
	}
	

</cfscript>