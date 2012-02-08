
!MetacelloMCProject class methodsFor: 'scripting'!
configurationFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    | configurationName repository |
    configurationName := MetacelloToolBox configurationNameFrom: aScriptingEngine projectName.
    (unconditionalLoad or: [ (Smalltalk at: configurationName asSymbol ifAbsent: [  ]) isNil ])
        ifTrue: [ 
            repository := aScriptingEngine repository.
            Gofer new
                repository: repository;
                package: configurationName;
                load ].
    ^ Smalltalk at: configurationName asSymbol! !
