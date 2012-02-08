
!MetacelloVersionValidator methodsFor: 'accessing'!
exludededValidations

	exludededValidations == nil ifTrue: [ exludededValidations := self extractExcludedValidations ].
	^exludededValidations! !
