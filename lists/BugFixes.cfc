component extends=testbox.system.BaseSpec {

	function run(){
		describe("replaceListNoCase() tests", function(){
			it("performs a case-insensitive replacement on simple values", function(){
				var array = ["tahi", "rua", "toru", "wha"];
				var result = arrayFindNoCase(array, "TORU");
				var expected = 3;
				expect(result).toBe(expected);
			});

		});
	}
}