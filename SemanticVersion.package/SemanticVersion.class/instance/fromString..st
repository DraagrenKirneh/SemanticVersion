converting
fromString: aString

	| reader numberParser |
	
	reader := aString readStream.
	numberParser := NumberParser on: reader.
	
	major := numberParser nextUnsignedIntegerBase: 10.
	
	(reader peekFor: $.) ifTrue: [ 
		minor 	:= numberParser nextUnsignedIntegerBase: 10.
		(reader peekFor: $.) ifTrue: [ 
			patch 	:= numberParser nextUnsignedIntegerBase: 10.
		]
	].

	(reader peekFor: $-) ifTrue: [ | parts |
		parts := $. split: (reader upTo: $+).
		preRelease := parts collect: [ :each | 
			each first isDigit 
				ifTrue: [ each asNumber ]	
				ifFalse: [ each ]
		] as: Array.
		build := reader upToEnd.
		^ self	
	].
	
	(reader peekFor: $+) ifTrue: [ 
		build := reader upToEnd.
	].
	
	reader atEnd ifFalse: [ self error ]

	