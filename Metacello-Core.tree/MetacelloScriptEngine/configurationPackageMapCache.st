
!MetacelloScriptEngine methodsFor: 'accessing'!
configurationPackageMapCache
    configurationPackageMapCache ifNil: [ configurationPackageMapCache := Dictionary new ].
    ^ configurationPackageMapCache! !
