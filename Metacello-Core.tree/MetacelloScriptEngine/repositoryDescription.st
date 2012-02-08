
!MetacelloScriptEngine methodsFor: 'accessing'!
repositoryDescription
    repositoryDescription ifNil: [ repositoryDescription := self class defaultMetacelloRepositoryDescription ].
    ^ repositoryDescription! !
