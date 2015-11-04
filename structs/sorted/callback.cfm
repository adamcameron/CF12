<cfscript>
sorted = structNew("sorted", function(e1,e2){
	writeDump(arguments); 
	throw;
});
sorted.key = "value";
</cfscript>