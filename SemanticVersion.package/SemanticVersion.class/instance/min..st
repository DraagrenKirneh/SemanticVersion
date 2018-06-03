comparing
min: aSemVer 

	^ self < aSemVer ifTrue: [ self ] ifFalse: [ aSemVer ]