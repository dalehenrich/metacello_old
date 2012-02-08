
!MetacelloMCProjectSpec methodsFor: 'querying'!
file
    projectPackage ifNil: [ ^ nil ].
    ^ self projectPackage file! !
