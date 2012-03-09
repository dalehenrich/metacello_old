
!MetacelloGitHubTestCase methodsFor: 'tests'!
testExternalLoad
    | loaded |
    Metacello new
        project: 'External';
        repository: 'github://dalehenrich/external:1.0-beta.32Tests/core';
        load.
    Smalltalk at: #'ExternalCore'.
    loaded := Metacello loadedProjects.
    self assert: loaded size = 1.
    self assert: ((loaded at: 'External') at: 2) = '1.0-beta.32Tests'! !
