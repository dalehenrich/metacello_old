
!MetacelloMCProjectSpec methodsFor: 'accessing'!
name: aString
    super name: aString.
    projectPackage ifNotNil: [ self projectPackage name: aString ]! !
