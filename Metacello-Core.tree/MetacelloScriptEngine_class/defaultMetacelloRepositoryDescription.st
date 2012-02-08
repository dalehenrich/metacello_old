
!MetacelloScriptEngine class methodsFor: 'accessing'!
defaultMetacelloRepositoryDescription
    DefaultMetacelloRepositoryDescription ifNil: [ ^ MetacelloPlatform current defaultMetacelloRepositoryDescription ].
    ^ DefaultMetacelloRepositoryDescription! !
