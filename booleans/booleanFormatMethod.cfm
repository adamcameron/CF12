<cfscript>
include "../../cfml/safeRun.cfm";

safeRun("yesNoFormat() method", function(){
	s = false;
	writeOutput(s.yesNoFormat());
});

safeRun("booleanFormat() method", function(){
	s = "No";
	writeOutput(s.booleanFormat());
});

safeRun("dateFormat() method", function(){
	s = "2015-12-07";
	writeOutput(s.dateFormat());
});

</cfscript>