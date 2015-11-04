// Application.cfc

component {
	
	this.name = "test03";
	this.sessionManagement = true;

	cli.writeln("#getCurrentTemplatePath()# called");

	function onApplicationStart(){
		cli.writeln("#getFunctionCalledName()#() called");
	}

	function onSessionStart(){
		cli.writeln("#getFunctionCalledName()#() called");
	}

	function onRequestStart(){
		cli.writeln("#getFunctionCalledName()#() called");
	}

	function onRequest(){
		cli.writeln("#getFunctionCalledName()#() called");
		include arguments[1];
	}

	function onRequestEnd(){
		cli.writeln("#getFunctionCalledName()#() called");
	}

}