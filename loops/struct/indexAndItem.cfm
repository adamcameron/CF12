<cfset numbers = [
	one = "tahi",
	two = "rua",
	three = "toru",
	four = "wha",
	five = "rima",
	six = "ono",
	seven = "whitu",
	eight = "ware",
	nine = "iwa",
	ten = "tekau"
]>

<cfoutput>
<cfloop index="index" item="item" collection="#numbers#">
	#index# #item#<br>
</cfloop>
</cfoutput>