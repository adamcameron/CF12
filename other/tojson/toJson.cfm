<cfscript>
a = ["tahi"];
st = {two="rua"};
ost = {three="toru"};
q = queryNew("en,mi", "varchar,varchar",[["four","wha"]]);
cfxml(variable="x"){
	writeOutput("<five><rima/></five>");
}
s = "ono";
ts = now();
d = 42 * 1;
b = true == true;

CLI.writeLn(a.toJson());
CLI.writeLn(st.toJson());
CLI.writeLn(ost.toJson());
CLI.writeLn(q.toJson());
CLI.writeLn(q.toJson(true));
CLI.writeLn(x.toJson());
CLI.writeLn(s.toJson());
CLI.writeLn(ts.toJson());
//CLI.writeLn(d.toJson()); // not supported for numerics
//CLI.writeLn(b.toJson()); // not supported for booleans
CLI.writeLn(variables.toJson());

</cfscript>