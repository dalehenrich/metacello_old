
!MetacelloMCProjectSpec methodsFor: 'querying'!
projectPackage
    projectPackage
        ifNil: [ 
            projectPackage := self project packageSpec.
            projectPackage file: self className.
            projectPackage repositories: self getRepositories copy.
            repositories := nil ].
    ^ projectPackage! !
