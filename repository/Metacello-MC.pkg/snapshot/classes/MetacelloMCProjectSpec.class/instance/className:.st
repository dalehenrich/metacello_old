
!MetacelloMCProjectSpec methodsFor: 'accessing'!
className: aString
    super className: aString.
    projectPackage ifNotNil: [ self projectPackage file: aString ]! !
