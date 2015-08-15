// Application.cfc

component {
	
	this.name = "test01";
	this.sessionManagement = true;

	variables.CRLF = chr(13) & chr(10);
	
	writeOutput("#getCurrentTemplatePath()# called#variables.CRLF#");

	function onApplicationStart(){
		writeOutput("#getFunctionCalledName()#() called#CRLF#");
	}

	function onSessionStart(){
		writeOutput("#getFunctionCalledName()#() called#CRLF#");
	}

	function onRequestStart(){
		writeOutput("#getFunctionCalledName()#() called#CRLF#");
	}

	function onRequest(){
		writeOutput("#getFunctionCalledName()#() called#CRLF#");
		writeOutput(CRLF);
		include arguments[1];
		writeOutput(CRLF);
	}

	function onRequestEnd(){
		writeOutput("#getFunctionCalledName()#() called#CRLF#");
	}

}