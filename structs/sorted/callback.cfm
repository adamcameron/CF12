<cfscript>
sorted = structNew("sorted", function(){
	writeDump(arguments); 
	throw;
});
sorted.key = "value";
</cfscript>