
!MetacelloGenericProjectSpec methodsFor: 'accessing'!
repositories
    repositories ifNil: [ repositories := self project repositoriesSpec ].
    ^ repositories! !
