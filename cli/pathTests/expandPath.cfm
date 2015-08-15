<cfset CRLF = chr(13) & chr(10)>
<cfset thisPath = expandPath(CLI.getArg(1))>
<cfoutput>
#thisPath#
#CRLF##CRLF#
</cfoutput>