
!MetacelloGroupSpec methodsFor: '*metacello-mc'!
resolveToPackagesIn: aVersionSpec visited: visited

	| packages |
	packages := Dictionary new.
	self resolveToPackagesIn: aVersionSpec into: packages visited: visited.
	^packages values asOrderedCollection
! !
