
!MetacelloMCProjectSpec methodsFor: 'accessing'!
repositories
    projectPackage
        ifNotNil: [ 
            repositories := nil.
            ^ projectPackage repositories ].
    repositories == nil
        ifTrue: [ repositories := self project repositoriesSpec ].
    ^ repositories! !
