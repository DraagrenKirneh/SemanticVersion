tests
testStringParsing

	| string version |
	
	string := '1.7.25-preRelease.1.0+build.41'.
	version := string asSemanticVersion.
	
	self
		assert: version versionEquals: #(1 7 25);
		assert: version preRelease equals: #('preRelease' 1 0);
		assert: version build equals: 'build.41';
		assert: version asString equals: string