tests
testThreeWayCompare

	| v1 v2 |
	
	v1 := '1.0.0' asSemanticVersion.
	v2 := '2.0.0' asSemanticVersion.
	
	self 
		assert: (v1 threeWayCompareTo: v1) equals: 0;
		assert: (v2 threeWayCompareTo: v1) equals: 1;
		assert: (v1 threeWayCompareTo: v2) equals: -1
