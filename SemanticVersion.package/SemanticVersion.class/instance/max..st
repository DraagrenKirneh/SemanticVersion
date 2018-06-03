comparing
max: aSemVer 

	^ self > aSemVer ifTrue: [ self ] ifFalse: [ aSemVer ]