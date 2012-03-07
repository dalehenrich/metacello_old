
!MetacelloMCProjectSpec methodsFor: 'accessing'!
getRepositories
    "raw access to iv"

    projectPackage ~~ nil
        ifTrue: [ ^ projectPackage getRepositories ].
    ^ repositories! !
