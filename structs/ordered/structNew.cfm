<cfscript>
ordered = structNew("ordered");
ordered.first = 1;
ordered.second = 2;
ordered.third = 3;
ordered.fourth = 4;
ordered.fifth = 5;	

ordered.each(function(k,v){
	writeOutput("#k#: #v#<br>");
});
</cfscript>