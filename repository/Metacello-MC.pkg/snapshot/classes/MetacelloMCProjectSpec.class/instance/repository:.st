
!MetacelloMCProjectSpec methodsFor: 'accessing'!
repository: aStringOrMetacelloRepositorySpec
    'dictionary://Metacello_Configuration_TestX_Repository' = aStringOrMetacelloRepositorySpec
        ifTrue: [ self halt ].
    self repositories repository: aStringOrMetacelloRepositorySpec.
    projectPackage ifNotNil: [ self projectPackage repository: aStringOrMetacelloRepositorySpec ]! !
