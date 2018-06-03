incrementing
nextMinor

	^ self class new 
		major: major;
		minor: minor + 1;
		yourself 
	