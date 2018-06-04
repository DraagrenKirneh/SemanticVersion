tests
testInitialize

	| version |
	
	version := SemanticVersion new.
	
	self
		assert: version versionEquals: #(0 0 0);
		assert: version preRelease equals: #();
		assert: version build equals: ''