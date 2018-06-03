incrementing
nextPatch

	^ self class new 
		major: major;
		minor: minor;
		patch: patch + 1;
		yourself 
	