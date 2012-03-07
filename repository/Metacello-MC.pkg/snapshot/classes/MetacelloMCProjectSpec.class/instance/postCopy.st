
!MetacelloMCProjectSpec methodsFor: 'copying'!
postCopy
    super postCopy.
    repositories := repositories copy.
    projectPackage := projectPackage copy! !
