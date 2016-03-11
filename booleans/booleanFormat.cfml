<cfscript>
b = booleanFormat("yes");
writeOutput(b.getClass().getName());	

b = true and true;
writeOutput(b.getClass().getName());	

a = [];
result = arrayAppend(a, "foo");
writeOutput(result.getClass().getName());	
writeOutput(result.toString());

s = "No";
writeOutput(s.booleanFormat());;

</cfscript>