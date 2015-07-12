component extends=testbox.system.BaseSpec {

	original = "whero,karaka,kowhai,kakariki,kikorangi,poropango,papura";
	toReplace = "WHERO,KARAKA,KOWHAI,KAKARIKI,KIKORANGI,POROPANGO,PAPURA";
	with = "red,orange,yellow,green,blue,indigo,violet";
	expected = with;

	function run(){
		describe("replaceListNoCase() tests", function(){
			it("performs a case-insensitive replacement on simple values", function(){
				var result = replaceListNoCase(original, toReplace, with);
				var comparison = compare(expected,result);
				expect(comparison).toBe(0);
			});
		});
		describe(".replaceListNoCase() tests", function(){
			it("performs a case-insensitive replacement on simple values", function(){
				var result = original.replaceListNoCase(toReplace, with);
				var comparison = compare(expected,result);
				expect(comparison).toBe(0);
			});
		});
	}
}