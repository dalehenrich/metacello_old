
!MetacelloScriptingTestCase methodsFor: 'tests'!
testExternalLoad
    true
        ifTrue: [ 
            "under construction"
            ^ self ].
    Metacello new
        project: 'External';
        repository: 'filetree://' , externalDirectory fullName;
        get.
    Smalltalk at: #'ExternalCore'! !
