<cfsetting enablecfoutputonly="true">
<cfset rainbow = ["Whero","Karaka","Kowhai","Kakariki","Kikorangi","Poropango","Papura"]>

<cfloop index="i" from="1" to="#arrayLen(rainbow)#">
	<cfoutput>#rainbow[i]#<br></cfoutput>
</cfloop>
<cfoutput><hr></cfoutput>


<cfloop array="#rainbow#" index="colour">
	<cfoutput>#colour#<br></cfoutput>
</cfloop>
<cfoutput><hr></cfoutput>

<cfloop array="#rainbow#" index="i" item="colour">
	<cfoutput>#i#: #colour#<br></cfoutput>
</cfloop>
<cfoutput><hr></cfoutput>

<cfloop array="#rainbow#" item="colour">
	<cfoutput>#colour#<br></cfoutput>
</cfloop>
<cfoutput><hr></cfoutput>
