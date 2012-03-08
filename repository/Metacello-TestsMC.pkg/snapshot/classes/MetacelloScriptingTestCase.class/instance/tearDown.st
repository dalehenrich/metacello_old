
!MetacelloScriptingTestCase methodsFor: 'running'!
tearDown
    | aGofer |
    super tearDown.
    aGofer := Gofer new.
    self tearDownPackages: aGofer.
    aGofer references notEmpty
        ifTrue: [ aGofer metacelloUnload ].
    externalDirectory exists
        ifTrue: [ externalDirectory recursiveDelete ].
    sampleDirectory exists
        ifTrue: [ sampleDirectory recursiveDelete ]! !
