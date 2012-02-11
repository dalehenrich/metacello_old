
!MetacelloScriptEngine methodsFor: 'project lookup'!
lookupAndLoadConfiguration: configurationName unconditionalLoad: unconditionalLoad
    Smalltalk
        at: configurationName asSymbol
        ifPresent: [ 
            unconditionalLoad
                ifFalse: [ ^ self ] ].
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
                    (references := (GoferPackageReference name: configurationName) resolveAllWith: cachedGofer) notEmpty
                        ifTrue: [ 
                            | gofer |
                            gofer := Gofer new.
                            cachedGofer repositories do: [ :repo | gofer repository: repo ].
                            gofer version: references last name.
                            gofer load.
                            ^ self ] ] ]! !
