
!MetacelloMCVersionSpec methodsFor: 'querying'!
packageNames

	packages == nil ifTrue: [ ^#() ].
	^self packages map keys asSet ! !
