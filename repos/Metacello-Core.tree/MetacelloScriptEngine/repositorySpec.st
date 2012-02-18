
!MetacelloScriptEngine methodsFor: 'private'!
repositorySpec
    ^ (projectClass ifNil: [ MetacelloMCProject ]) new repositorySpec
        description: self repositoryDescription;
        yourself! !
