
!MetacelloMCProjectSpec methodsFor: 'accessing'!
projectPackage
    projectPackage
        ifNil: [ 
            projectPackage := self project packageSpec.
            self getFile
                ifNotNil: [ 
                    projectPackage name: self name.
                    projectPackage file: self file ]
                ifNil: [ self getClassName ifNotNil: [ projectPackage name: self className ] ].
            projectPackage repositories: self getRepositories ].
    ^ projectPackage! !
