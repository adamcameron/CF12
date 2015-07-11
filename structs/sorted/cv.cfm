<cfscript>
sorted = structNew("sorted");

cv = createObject("java", "me.adamcameron.miscellany.ClassViewer");
writeOutput("<pre>" & cv.viewObject(sorted) & "<hr>");
</cfscript>