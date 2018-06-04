comparing
threeWayCompareTo: aSemVer
	
	| result |
	
	self == aSemVer ifTrue: [ ^ 0 ].
	
	result := major threeWayCompareTo: aSemVer major.
	result = 0 ifFalse: [ ^ result ].
	
	result := minor threeWayCompareTo: aSemVer minor.
	result = 0 ifFalse: [ ^ result ].
	
	result := patch threeWayCompareTo: aSemVer patch.
	result = 0 ifFalse: [ ^ result ].
	
	preRelease ifEmpty: [ ^ aSemVer preRelease empty asBit ].
	result := self comparePreRelease: aSemVer preRelease.
	"result = 0 ifFalse: [ ^ result ]."
		
	"result := build threeWayCompareTo: aSemVer build."
	
	^ result 
	
