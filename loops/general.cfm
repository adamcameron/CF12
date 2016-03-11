<cfset myCollection = getCollection()>

<cfoutput>
<cfloop collection="#myCollection#" key="key" value="value">
	#key#: #value#<br>
</cfloop>
</cfoutput>
