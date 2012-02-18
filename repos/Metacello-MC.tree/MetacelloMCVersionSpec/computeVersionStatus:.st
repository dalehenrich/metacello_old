
!MetacelloMCVersionSpec methodsFor: 'accessing'!
computeVersionStatus: matchBlock
	self computeVersionStatus: (self expandToLoadableSpecNames: #('ALL')) matchBlock: matchBlock! !
