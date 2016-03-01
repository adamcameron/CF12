<cfscript>
numbers = "tahi,rua,toru,wha";
concatenatedNumbers = numbers.listReduce(function(cat,number){return cat&number;}, "");
writeDump(variables);
</cfscript>