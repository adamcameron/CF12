<cfsetting enablecfoutputonly="true">

<cfoutput><pre></cfoutput>
<cfloop file="#getCurrentTemplatePath()#" index="line">
	<cfoutput>#encodeForHtml(line)#<br></cfoutput>
</cfloop>
<cfoutput></pre></cfoutput>
<cfoutput><hr></cfoutput>

<cfoutput><pre></cfoutput>
<cfloop file="#getCurrentTemplatePath()#" index="i" item="line">
	<cfoutput>#i#:	#encodeForHtml(line)#<br></cfoutput>
</cfloop>
<cfoutput></pre></cfoutput>
<cfoutput><hr></cfoutput>

<cfoutput><pre></cfoutput>
<cfloop file="#getCurrentTemplatePath()#" item="line">
	<cfoutput>#encodeForHtml(line)#<br></cfoutput>
</cfloop>
<cfoutput></pre></cfoutput>
<cfoutput><hr></cfoutput>
