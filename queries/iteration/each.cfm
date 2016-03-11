<cfscript>
colours = queryNew("id,en,mi", "integer,varchar,varchar", [
	[1,"red","whero"],
	[2,"orange","kakariki"]
]);

colours.each(function(colour, index, colours){
	writeDump(arguments);
});	
</cfscript>