
!MetacelloMCProject class methodsFor: 'scripting'!
configurationFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    | configurationName |
    configurationName := MetacelloScriptEngine configurationNameFrom: aScriptingEngine projectName.
    (unconditionalLoad or: [ (Smalltalk at: configurationName asSymbol ifAbsent: [  ]) isNil ])
        ifTrue: [ aScriptingEngine lookupAndLoadConfiguration: configurationName unconditionalLoad: unconditionalLoad ].
    ^ Smalltalk at: configurationName asSymbol! !
