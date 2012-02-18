
!MetacelloScriptEngine methodsFor: 'accessing'!
pinnedProjects
    pinnedProjects ifNil: [ pinnedProjects := self class pinnedProjects copy ].
    ^ pinnedProjects! !
