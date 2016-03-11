source = "this is a string from which to exchange some matches using a callback to perform the exchange";
match = new RegExp("exchange", "g");
replacement = "replace";

result = source.replace(match, function(match, index, source){
	return replacement;
});

console.log(result);