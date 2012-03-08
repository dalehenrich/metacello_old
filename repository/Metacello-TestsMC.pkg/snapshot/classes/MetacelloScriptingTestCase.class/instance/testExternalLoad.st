
!MetacelloScriptingTestCase methodsFor: 'tests'!
testExternalLoad
    self halt.
    Metacello new
        project: 'External';
        repository: 'filetree://' , externalDirectory fullName;
        get.
    Smalltalk at: #'ExternalCore'! !
