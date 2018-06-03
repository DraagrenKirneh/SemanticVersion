private
comparePreRelease: aCollection

	preRelease ifEmpty: [ 
		^ aCollection ifEmpty: [ 0 ] ifNotEmpty: [ 1 ]
	].	
	aCollection ifEmpty: [ ^ -1 ].
	
	preRelease size < aCollection size ifTrue: [ ^ -1 ].
	
	aCollection withIndexDo: [ :obj :ix | | other result |
		other := preRelease at: ix.
		obj class == other class ifFalse: [ ^ -1 ].
		result := other threeWayCompareTo: obj.
		result = 0 ifFalse: [ ^ result ]	
	].

	^ (preRelease size = aCollection size) asBit