asserting
assert: aSemVer versionEquals: aTripple
	
	self 
		assert: aSemVer major equals: aTripple first;
		assert: aSemVer minor equals: aTripple second;
		assert: aSemVer patch equals: aTripple third
		
