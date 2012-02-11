
!MetacelloScriptEngine methodsFor: 'project lookup'!
getConfigurationUnconditionalLoad: unconditionalLoad
    | configurationName |
    configurationName := self class configurationNameFrom: self projectName.
    self lookupAndLoadConfiguration: configurationName unconditionalLoad: unconditionalLoad.
    ^ Smalltalk at: configurationName asSymbol! !
