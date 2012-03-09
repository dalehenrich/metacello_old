
!MetacelloGitHubTestCase methodsFor: 'tests'!
testSampleLoad
    | loaded |
    Metacello new
        project: 'Sample';
        repository: 'github://dalehenrich/sample:1.0-beta.32Tests/core';
        load.
    Smalltalk at: #'ExternalCore'.
    Smalltalk at: #'SampleCore'.
    Smalltalk at: #'SamplePlatform'.
    Smalltalk at: #'SampleTests'.
    loaded := Metacello loadedProjects.
    self assert: loaded size = 2.
    self assert: ((loaded at: 'External') at: 2) = 'master'.
    self assert: ((loaded at: 'Sample') at: 2) = '1.0-beta.32Tests'! !
