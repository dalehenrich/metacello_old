
!MetacelloPlatform methodsFor: 'accessing'!
bypassGoferLoadUpdateCategories

	bypassGoferLoadUpdateCategories == nil ifTrue: [ bypassGoferLoadUpdateCategories := false ].
	^ bypassGoferLoadUpdateCategories! !
