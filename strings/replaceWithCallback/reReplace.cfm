<cfscript>
source = "Aue kahore ! Totohu etahi mimi , tenei tau toharite me te ruru kei rite paru ano he beaut Undie 500. Mean i , i roto i nga rakau , ko Maui me te Armed tangata hara Squad ki runga ki kahore pai ki te paihere o te poraka pihikete . Te kiwi rite kaha o tona huarangatia i runga par ki miniti kamupūtu Jonah Lomu o . Kuhua te oko i runga i ka koe hē , enei toutou riki naff katoa taea tatari noa i muri mai . Ko te taonga tuatahi mō ngaueue kau haere ki ... Hemi me te Giant Peach me tona tāhungahunga ataahua , he aha he bludger ohipa ore . Bro , ipu o kīnaki tōmato he pai tino matapōkere ki vivids patu , aye .";

redacted = reReplace(source, "(?i)\b[a-z]{4}\b", function(){
	writeDump(arguments);
});
</cfscript>