
!MetacelloGenericProjectSpec methodsFor: 'querying'!
repositorySpecs
    repositories ifNil: [ ^ #() ].
    ^ self repositories map values! !
