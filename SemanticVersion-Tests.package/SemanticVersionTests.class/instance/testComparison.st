tests
testComparison

	| v1 v2 |
	
	v1 := '1.0.0' asSemanticVersion.
	v2 := '1.0.1' asSemanticVersion.
	
	self 
	
		assert: v1 = v1;
		deny: v1 = v2;
		
		assert: v1 ~= v2;
		deny: v1 ~= v1;
		
		assert: v1 < v2;
		deny: v2 < v1;
		
		assert: v1 <= v2;
		assert: v1 <= v1;
		deny: v2 <= v1;
		
		assert: v2 > v1;
		deny: v1 > v2;
		
		assert: v2 >= v1;
		assert: v2 >= v2;
		deny: v1 >= v2
		
		
		
	
	
	