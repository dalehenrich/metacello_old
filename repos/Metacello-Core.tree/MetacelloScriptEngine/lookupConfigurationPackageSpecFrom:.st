
!MetacelloScriptEngine methodsFor: 'project lookup'!
lookupConfigurationPackageSpecFrom: aPackageSpec
    | configurationGofer packageSpec |
    (configurationGofer := self lookupConfigurationGofer: aPackageSpec file) ifNil: [ ^ aPackageSpec ].
    packageSpec := aPackageSpec copy
        repositories: nil;
        yourself.
    configurationGofer repositories
        do: [ :repo | packageSpec repository: (repo asRepositorySpecFor: packageSpec project) ].
    ^ packageSpec! !
