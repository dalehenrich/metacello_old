
!MetacelloMCProjectSpec methodsFor: 'merging'!
mergeSpec: anotherSpec
    | newSpec anotherProjectPackage map anotherRepositories |
    newSpec := super mergeSpec: anotherSpec.
    map := anotherSpec mergeMap.
    (anotherProjectPackage := map at: #'projectPackage') ~~ nil
        ifTrue: [ 
            newSpec
                projectPackage:
                    (newSpec getProjectPackage == nil
                        ifTrue: [ anotherProjectPackage ]
                        ifFalse: [ newSpec projectPackage mergeSpec: anotherProjectPackage ]) ]
        ifFalse: [ 
            (anotherRepositories := map at: #'repositories') ~~ nil
                ifTrue: [ 
                    newSpec
                        repositories:
                            (self getRepositories == nil
                                ifTrue: [ anotherRepositories ]
                                ifFalse: [ self repositories mergeSpec: anotherRepositories ]) ] ].
    ^ newSpec! !
