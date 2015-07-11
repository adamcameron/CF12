component extends="testbox.system.BaseSpec" {

	function run(){
		describe("basline", function(){
			it("has the correct class", function(){
				var ordered = getTestStruct();
				var className = ordered.getClass().getName();
				expect(className).toBe("coldfusion.runtime.StructOrdered");
			});
			it("maintains key order", function(){
				var ordered = getTestStruct();
				var actualKeys = reduceKeysToList(ordered);
				var expectedKeys = getExpectedKeysFromTestStruct();
				expect(actualKeys).toBe(expectedKeys);
			});
		});
		describe("interaction", function(){
			it("doesn't change type if a normal struct is appended", function(){
				var ordered = getTestStruct();

				var ordinary = {
					ordinaryKey = 2
				};
				ordered.append(ordinary);

				var className = ordered.getClass().getName();
				expect(className).toBe("coldfusion.runtime.StructOrdered");

				var actualKeys = reduceKeysToList(ordered);
				var expectedKeys = getExpectedKeysFromTestStruct().listAppend(ordinary.keyList());
				expect(actualKeys).toBe(expectedKeys);
			});
		});
		describe("keys", function(){
			it("returns keys in expected order from keyList()", function(){
				var ordered = getTestStruct();
				var actualKeys = ordered.keyList();
				var expectedKeys = getExpectedKeysFromTestStruct();
				expect(actualKeys).toBe(expectedKeys);
			});
			it("returns keys in expected order from keyArray()", function(){
				var ordered = getTestStruct();
				var actualKeys = ordered.keyArray().toList();
				var expectedKeys = getExpectedKeysFromTestStruct();
				expect(actualKeys).toBe(expectedKeys);
			});
		});

		describe("method/function compat", function(){
			it("map() returns ordered struct", function(){
				var ordered = getTestStruct();
				var mapped = ordered.map(function(k,v,struct){
					return true;
				});
				var className = mapped.getClass().getName();
				expect(className).toBe("coldfusion.runtime.StructOrdered");
			});
			it("structMap() returns ordered struct", function(){
				var ordered = getTestStruct();
				var mapped = structMap(ordered, function(k,v,struct){
					return true;
				});
				var className = mapped.getClass().getName();
				expect(className).toBe("coldfusion.runtime.StructOrdered");
			});
			it("works with duplicate()", function(){
				var ordered = getTestStruct();
				var duplicated = ordered.duplicate();

				var className = duplicated.getClass().getName();
				expect(className).toBe("coldfusion.runtime.StructOrdered");
				expect(duplicated).toBe(ordered);
			});
			it("works with copy()", function(){
				var ordered = getTestStruct();
				var copied = ordered.copy();

				var className = copied.getClass().getName();
				expect(className).toBe("coldfusion.runtime.StructOrdered");
				expect(copied).toBe(ordered);
			});
			it("works with isStruct()", function(){
				var ordered = getTestStruct();

				expect(isStruct(ordered)).toBeTrue();
			});
			it("works with clear()", function(){
				var ordered = getTestStruct();
				ordered.clear();

				var className = ordered.getClass().getName();
				expect(className).toBe("coldfusion.runtime.StructOrdered");
				expect(ordered).toBe(structNew("ordered"));
			});
		});
	}

	function getTestStruct(){
		var ordered = structNew("ordered");
		ordered.first = 1;
		ordered.second = 2;
		ordered.third = 3;
		ordered.fourth = 4;
		ordered.fifth = 5;					
		return ordered;		
	}

	function getExpectedKeysFromTestStruct(){
		return "first,second,third,fourth,fifth";
	}

	function reduceKeysToList(struct){
		return struct.reduce(function(list,key){
			return list.listAppend(key);
		}, "");
	}


}
