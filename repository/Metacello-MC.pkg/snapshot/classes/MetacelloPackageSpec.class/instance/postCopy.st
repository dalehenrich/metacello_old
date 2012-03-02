
!MetacelloPackageSpec methodsFor: 'copying'!
postCopy

	super postCopy.
	goferPackage := nil.
	repositories := repositories copy.
! !
