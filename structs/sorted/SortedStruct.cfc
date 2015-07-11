component extends="structs.Baseline" {

	expectedClassName = "coldfusion.runtime.StructSorted";

	function getTestStruct(){
		var ordered = structNew("sorted");
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

}
