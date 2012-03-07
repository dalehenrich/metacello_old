
!MetacelloMCProjectSpec methodsFor: 'accessing'!
projectPackage
    projectPackage
        ifNil: [ 
            projectPackage := self project packageSpec.
            projectPackage name: self name.
            self getFile
                ifNotNil: [ projectPackage file: self file ]
                ifNil: [ self getClassName ifNotNil: [ projectPackage file: self className ] ].
            projectPackage repositories: self getRepositories ].
    ^ projectPackage! !
