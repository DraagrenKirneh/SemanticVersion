comparing
= anObject

	self == anObject ifTrue: [ ^ true ].
	self class == anObject class ifFalse: [ ^ false ].

	^ major = anObject major and: [ 
		minor = anObject minor and: [ 
			patch = anObject patch and: [ 
				preRelease = anObject preRelease and: [ 
					build = anObject build	
				]
			]
		]	
	]	
		