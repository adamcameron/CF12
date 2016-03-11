<cfset week = "Rāhina,Rātū,Rāapa,Rāpare,Rāmere,Rāhoroi,Rātapu">

<cfoutput>
<cfloop list="#week#" index="day">
	#day#<br>
</cfloop>
<hr>

<cfloop list="#week#" index="i" item="day">
	#i#: #day#<br>
</cfloop>
<hr>

<cfloop list="#week#" item="day">
	#day#<br>
</cfloop>
<hr>
</cfoutput>