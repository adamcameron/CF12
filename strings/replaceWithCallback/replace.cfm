<cfscript>
needle = "match";
haystack = "source to find match";
replacement = "REPLACEMENT";

result = replace(haystack, needle, function(needle, index, haystack){
	return replacement;
});
writeDump(["Result with one replacement: [#result#]"]);

haystack = "source to find either one match or another match";
result = replace(haystack, needle, function(needle, index, haystack){
	return replacement;
});
writeDump(["Result with potentially multiple replacements: [#result#]"]);

result = replace(haystack, needle, function(needle, index, haystack){
	return replacement;
}, "ALL");
writeDump(["Result with potentially multiple replacements: [#result#]"]);

needle = "MATCH";
result = replace(haystack, needle, function(needle, index, haystack){
	return replacement;
}, "ALL");
writeDump(["Result with potentially multiple case sensitive replacements: [#result#]"]);

result = replace(haystack, needle, function(needle, index, haystack){
	return replacement;
}, "ALL", true);
writeDump(["Result with potentially multiple case sensitive replacements: [#result#]"]);
</cfscript>