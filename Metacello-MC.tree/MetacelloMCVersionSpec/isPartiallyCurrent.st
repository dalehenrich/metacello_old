
!MetacelloMCVersionSpec methodsFor: 'testing'!
isPartiallyCurrent

	^self isPartiallyCurrentAgainst: (self expandToLoadableSpecNames: #('ALL'))! !
