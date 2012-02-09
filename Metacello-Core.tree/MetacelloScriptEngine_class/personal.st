
!MetacelloScriptEngine class methodsFor: 'project search api'!
personal
    PersonalRepositories ifNil: [ PersonalRepositories := #() ].
    ^ PersonalRepositories! !
