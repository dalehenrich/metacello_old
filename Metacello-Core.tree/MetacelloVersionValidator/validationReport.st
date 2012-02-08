
!MetacelloVersionValidator methodsFor: 'accessing'!
validationReport
	
	validationReport == nil ifTrue: [ validationReport := OrderedCollection new ].
	^ validationReport! !
