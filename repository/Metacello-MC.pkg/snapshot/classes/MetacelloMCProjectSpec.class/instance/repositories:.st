
!MetacelloMCProjectSpec methodsFor: 'accessing'!
repositories: anObject
    projectPackage ifNotNil: [ ^ projectPackage repositories: anObject ].
    repositories := anObject! !
