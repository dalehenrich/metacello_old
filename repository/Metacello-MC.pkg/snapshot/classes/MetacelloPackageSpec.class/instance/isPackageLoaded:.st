
!MetacelloPackageSpec methodsFor: 'querying'!
isPackageLoaded: aLoader

	^(self workingCopyNameFor: aLoader) ~~ nil! !
