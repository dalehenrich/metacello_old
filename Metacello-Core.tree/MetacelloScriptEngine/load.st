
!MetacelloScriptEngine methodsFor: 'actions api'!
load
    [ self root: (self projectClass versionFrom: self) load ]
        on: MetacelloLookupConfigurationPackageSpecNotification
        do: [ :ex | ex resume: ((self lookupConfigurationPackageSpecFrom: ex packageSpec) ifNil: [ ^ ex resume: ex packageSpec ]) ]! !
