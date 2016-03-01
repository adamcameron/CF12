<cfscript>
replacer = function(){
writeDump(arguments);abort;
	return "replacement";
};
result = replace("source to find match", "match", replacer);
writeDump(variables);
</cfscript>