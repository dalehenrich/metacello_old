
!MetacelloSpec methodsFor: 'copying'!
postCopy

	super postCopy.
	loader ~~ nil  ifTrue: [ self loader: loader ]! !
