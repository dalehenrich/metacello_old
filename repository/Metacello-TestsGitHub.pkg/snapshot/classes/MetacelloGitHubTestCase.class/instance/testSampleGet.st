
!MetacelloGitHubTestCase methodsFor: 'tests'!
testSampleGet
    | project version |
    project := Metacello new
        project: 'Sample';
        repository: 'github://dalehenrich/sample:1.0-beta.32Tests/core';
        get.
    version := project version: 'baseline'.
    version packageNamed: 'Sample-Core'! !
