
!MetacelloScriptingResource methodsFor: 'running'!
setUp
    "self reset"

    super setUp.
    self
        setUpRepositories;
        setUpExternalCore;
        setUpSampleCore;
        yourself! !
