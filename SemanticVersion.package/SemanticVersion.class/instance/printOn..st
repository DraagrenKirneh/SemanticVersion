printing
printOn: aStream

	super printOn: aStream.
	
	aStream << ' ('; store: self; << ')'