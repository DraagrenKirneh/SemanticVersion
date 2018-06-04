tests
testWrongStrings

	self 
		should: [ '' asSemanticVersion ] raise: Error;
		should: [ '1.' asSemanticVersion ] raise: Error;
		should: [ 'test' asSemanticVersion ] raise: Error;
		should: [ '1<0' asSemanticVersion ] raise: Error;
		should: [ '1.0.0.' asSemanticVersion ] raise: Error