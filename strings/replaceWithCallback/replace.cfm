<cfscript>
source = "this is a string from which to exchange some matches using a callback to perform the exchange";
match = "exchange";
replacement = "replace";

result = source.replace(match, function(match, index, source){
	return replacement;
}, "ALL");

writeDump([
	source=source,
	match=match,
	replacement=replacement,
	result = result
]);
</cfscript>