tests
testMinimalStrings

	self
		assert: '1'     asSemanticVersion versionEquals: #(1 0 0);
		assert: '1.2'   asSemanticVersion versionEquals: #(1 2 0);
		assert: '1.02'  asSemanticVersion versionEquals: #(1 2 0);
		assert: '1.2.3' asSemanticVersion versionEquals: #(1 2 3)