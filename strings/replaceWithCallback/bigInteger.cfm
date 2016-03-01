<cfscript>
stringBuilder = createObject("java", "java.lang.StringBuilder").init("abc");
writeDump(stringBuilder);
</cfscript>