
!MetacelloScriptEngine methodsFor: 'accessing'!
configurationRepositories
    | list |
    list := OrderedCollection new.
    {(self platformOverrides).
    (self platformRepositories).
    (self personal)}
        do: [ :repos | 
            | specs |
            specs := OrderedCollection new.
            repos
                do: [ :description | 
                    specs
                        add:
                            (self repositorySpec
                                description: description;
                                yourself) ].
            list add: (specs collect: [ :repoSpec | repoSpec createRepository ]) ].
    ^ list! !
