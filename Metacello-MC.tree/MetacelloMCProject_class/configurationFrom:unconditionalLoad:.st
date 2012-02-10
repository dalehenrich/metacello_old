
!MetacelloMCProject class methodsFor: 'scripting'!
configurationFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    | configurationName |
    configurationName := MetacelloScriptEngine configurationNameFrom: aScriptingEngine projectName.
    (unconditionalLoad or: [ (Smalltalk at: configurationName asSymbol ifAbsent: [  ]) isNil ])
        ifTrue: [ 
            | gofer |
            gofer := Gofer new.
            aScriptingEngine configurationRepositories do: [ :repository | gofer repository: repository ].
            gofer
                package: configurationName;
                load ].
    ^ Smalltalk at: configurationName asSymbol! !
