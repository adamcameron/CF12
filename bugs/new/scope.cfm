<cfscript>
function foo(bar) {
    bar = "test";
	try {
		writeOutput("arguments scope");
		writeDump(var=[arguments.bar]);
	} catch (any e){
		writeDump({message=e.message});
	}
	try {
		writeOutput("local scope");
		writeDump(var=[local.bar]);
	} catch (any e){
		writeDump({message=e.message});
	}
	try {
		writeOutput("no scope");
		writeDump(var=[bar]);
	} catch (any e){
		writeDump({message=e.message});
	}
	try {
		writeOutput("variables scope");
		writeDump(var=[variables.bar]);
	} catch (any e){
		writeDump({message=e.message});
	}
}

writeOutput("Test with no arg passed:<br>");
foo();

writeOutput("<hr>Test with arg value passed:<br>");
foo("arg value");
</cfscript>