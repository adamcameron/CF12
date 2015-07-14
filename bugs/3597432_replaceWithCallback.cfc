component extends=testbox.system.BaseSpec {

	function run(){

		describe("replaceWithCallback() tests", function(){
			it("has been implemented in replace()", function(){
				expect(function(){
					replace("source to find match", "match", function(){
						return "replacement";
					});
				}).notToThrow();
			});
			/*
			it("has been implemented in replaceNoCase()", function(){
				expect(function(){
					replaceNoCase("source", "match", function(){
						return "replacement";
					});
				}).notToThrow();
			});
			it("has been implemented in reReplace()", function(){
				expect(function(){
					reReplace("source", "match", function(){
						return "replacement";
					});
				}).notToThrow();
			});
			it("has been implemented in reReplaceNoCase()", function(){
				expect(function(){
					reReplaceNoCase("source", "match", function(){
						return "replacement";
					});
				}).notToThrow();
			});
*/
		});
	}
}