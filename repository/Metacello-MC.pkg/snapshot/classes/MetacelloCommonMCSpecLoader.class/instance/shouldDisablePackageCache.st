
!MetacelloCommonMCSpecLoader methodsFor: 'accessing'!
shouldDisablePackageCache

	disablePackageCache == nil ifTrue: [ disablePackageCache := false ].
	^ disablePackageCache! !
