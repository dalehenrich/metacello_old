
!MetacelloAtomicLoadOrderTest methodsFor: 'accessing'!
loadType

	loadType ~~ nil ifTrue: [ ^loadType ].
	^#atomic! !
