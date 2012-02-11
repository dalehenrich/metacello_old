
!MetacelloScriptEngine methodsFor: 'project lookup'!
lookupAndLoadConfiguration: configurationName unconditionalLoad: unconditionalLoad
    | resolvedRef |
    Smalltalk
        at: configurationName asSymbol
        ifPresent: [ 
            unconditionalLoad
                ifFalse: [ ^ self ] ].
    resolvedRef := self configurationPackageMapCache at: configurationName ifAbsent: [  ].
    self configurationRepositories
        do: [ :repos | 
            | gofer |
            (resolvedRef notNil and: [ repos includes: resolvedRef repository ])
                ifTrue: [ 
                    gofer := Gofer new.
                    gofer repository: resolvedRef repository.
                    gofer version: resolvedRef name.
                    gofer load.
                    ^ self ].
            repos
                do: [ :repository | 
                    | resolved |
                    gofer := Gofer new.
                    gofer disablePackageCache.
                    gofer repository: repository.
                    gofer package: configurationName.
                    (resolved := gofer resolved) notEmpty
                        ifTrue: [ 
                            resolved do: [ :goferResolved | self configurationPackageMapCache at: goferResolved packageName put: goferResolved ].
                            gofer load.
                            ^ self ] ] ]! !
