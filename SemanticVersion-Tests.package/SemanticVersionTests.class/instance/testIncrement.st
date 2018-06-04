tests
testIncrement

	| version next |
	
	version := SemanticVersion new.	
	next := version nextPatch.	
		
	self 
		deny: version = next;
		assert: next versionEquals: #(0 0 1).
		
	next := next nextMinor.	
	self assert: next versionEquals: #(0 1 0).
	
	next := next nextMajor.	
	self assert: next versionEquals: #(1 0 0).
		