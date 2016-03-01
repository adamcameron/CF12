<cfset rainbow	= [
	red = "whero",
	orange = "karaka",
	yellow = "kowhai",
	green = "kakariki",
	blue = "kikorangi",
	indigo = "poropango",
	violet = "papura"
]>

<cfloop collection="#rainbow#" index="en" item="mi">
	<cfoutput>#en#: #mi#<br></cfoutput>
</cfloop>