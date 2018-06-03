printing
storeOn: aStream 

	aStream << major; << $.; << minor; << $.; << patch.
	
	preRelease ifNotEmpty: [ 
		aStream << $-.
		preRelease 
			do: [ : part | 	aStream << part ] 
			separatedBy: [ aStream << $. ] 
	].

	build ifNotEmpty: [ aStream << $+; << build ]