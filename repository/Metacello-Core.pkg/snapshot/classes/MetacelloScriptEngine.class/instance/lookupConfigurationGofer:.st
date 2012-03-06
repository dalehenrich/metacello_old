
!MetacelloScriptEngine methodsFor: 'project lookup'!
lookupConfigurationGofer: configurationName
    | pkgRef |
    pkgRef := GoferPackageReference name: configurationName.
    {(self platformOverrides).
    (self platformRepositories).
    (self personal)}
        do: [ :descriptions | 
            descriptions
                do: [ :description | 
                    | cachedGofer references gf |
                    cachedGofer := self goferCache
                        at: description
                        ifAbsent: [ 
                            "leverage resolvedReferencesCache in gofer instance, so we don't have to keep reading from network"
                            gf := Gofer new.
                            gf disablePackageCache.
                            gf
                                repository:
                                    (self repositorySpec
                                        description: description;
                                        yourself) createRepository.
                            self goferCache at: description put: gf.
                            gf ].
                    (pkgRef resolveAllWith: cachedGofer) notEmpty
                        ifTrue: [ ^ cachedGofer ] ] ].
    ^ nil! !
