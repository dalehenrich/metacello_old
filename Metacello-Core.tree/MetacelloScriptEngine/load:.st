
!MetacelloScriptEngine methodsFor: 'actions api'!
load: required
    [ self root: ((self projectClass versionFrom: self) load: required) ]
        on: MetacelloLookupConfigurationPackageSpecNotification
        do: [ :ex | ex resume: ((self lookupConfigurationPackageSpecFrom: ex packageSpec) ifNil: [ ^ ex resume: ex packageSpec ]) ]! !
