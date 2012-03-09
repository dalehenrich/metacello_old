
!MetacelloScriptEngine class methodsFor: 'accessing'!
loadedProjects
    LoadedProjects ifNil: [ LoadedProjects := Dictionary new ].
    ^ LoadedProjects! !
