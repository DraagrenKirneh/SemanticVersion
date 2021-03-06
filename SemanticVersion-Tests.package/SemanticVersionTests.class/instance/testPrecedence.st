tests
testPrecedence

	| versions current | 
	
	versions := {  
		'1.0.0-alpha' . '1.0.0-alpha.1' . '1.0.0-alpha.beta' . 
		'1.0.0-beta' . 	'1.0.0-beta.2' . '1.0.0-beta.11' . '1.0.0-rc.1' . 
		'1.0.0'. 	'2.0.0' . '2.1.0' . '2.1.1'. 
	 } collect: [ :each | each asSemanticVersion ].
	
	current := versions first.
	versions allButFirstDo: [ :each |
		self assert: (current < each).
		current := each	
	].

	current := versions last.
	versions reverse allButFirstDo: [ :each |
		self assert: (current > each).
		current := each	
	].