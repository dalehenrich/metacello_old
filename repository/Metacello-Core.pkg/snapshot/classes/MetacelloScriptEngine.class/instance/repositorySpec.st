
!MetacelloScriptEngine methodsFor: 'repositories'!
repositorySpec
    ^ (projectClass ifNil: [ MetacelloMCProject ]) new repositorySpec
        description: self repositoryDescription;
        yourself! !
