
!MetacelloAbstractVersionConstructor methodsFor: 'api'!
postLoadDoIt: aSymbol

	self validateDoItSelector: aSymbol.
	self root postLoadDoIt: aSymbol! !
