tests
testMinMax

	| v1 v2 v3|
	
	v1 := '1.0.0' asSemanticVersion.
	v2 := '2.0.0' asSemanticVersion.
	
	self 
		assert: (v1 min: v2) equals: v1;
		assert: (v2 min: v1) equals: v1;
		assert: (v1 max: v2) equals: v2;
		assert: (v2 max: v1) equals: v2.
		
	v3 := '3.0.0' asSemanticVersion.
	
	self 
		assert: (v1 min: v3 max: v2) equals: v2;
		assert: (v3 min: v2 max: v1) equals: v2;
		assert: (v2 min: v1 max: v3) equals: v3