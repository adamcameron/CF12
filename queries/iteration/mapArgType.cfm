<cfscript>
colours = queryNew("id,en,mi", "integer,varchar,varchar", [
	[1,"red","whero"],
	[2,"orange","karaka"],
	[3,"yellow","kowhai"],
	[4,"green","kakariki"],
	[5,"blue","kikorangi"],
	[6,"indigo","poropango"],
	[10,"violet","papura"]
]);

maoriColours = colours.map(function(colour, index, colours){
writeDump(colour.getClass().getName());abort;
	return {mi=colour.mi};
},queryNew("mi","varchar"));	

writeDump(var=maoriColours);

</cfscript>