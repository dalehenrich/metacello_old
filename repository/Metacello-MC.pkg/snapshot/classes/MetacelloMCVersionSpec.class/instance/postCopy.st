
!MetacelloMCVersionSpec methodsFor: 'copying'!
postCopy

	super postCopy.
	packages := packages copy.
	repositories := repositories copy.
	! !
