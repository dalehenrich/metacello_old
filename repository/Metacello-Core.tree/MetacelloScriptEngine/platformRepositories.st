
!MetacelloScriptEngine methodsFor: 'accessing'!
platformRepositories
    platformRepositories ifNil: [ platformRepositories := self class platformRepositories ].
    ^ platformRepositories! !
