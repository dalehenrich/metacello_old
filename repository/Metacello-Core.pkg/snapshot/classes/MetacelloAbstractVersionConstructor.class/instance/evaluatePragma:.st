
!MetacelloAbstractVersionConstructor methodsFor: 'private'!
evaluatePragma: pragma
	currentContext := pragma.
	[ self configuration perform: pragma selector with: self ] ensure: [ currentContext := nil ]! !
