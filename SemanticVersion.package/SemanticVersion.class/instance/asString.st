converting
asString

	^ String streamContents: [ :stream |
		self storeOn: stream
	].

