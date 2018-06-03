comparing
hash

	| hash |
	
	hash := major hash 			+ minor hash.
	hash := hash hashMultiply 	+ patch hash. 		
	hash := hash hashMultiply 	+ preRelease hash.	
	hash := hash hashMultiply 	+ build hash.     	
		
	^ hash hashMultiply