
!MetacelloVersionValidator methodsFor: 'accessing'!
recurse
	recurse == nil ifTrue: [ recurse := false ].
	^ recurse! !
