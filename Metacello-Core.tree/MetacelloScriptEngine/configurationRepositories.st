
!MetacelloScriptEngine methodsFor: 'accessing'!
configurationRepositories
    | specs |
    specs := OrderedCollection new.
    self platformOverrides , self platformRepositories , self personal
        do: [ :description | 
            specs
                add:
                    (self repositorySpec
                        description: description;
                        yourself) ].
    ^ specs collect: [ :repoSpec | repoSpec createRepository ]! !
