
!MetacelloIssue154TestCase methodsFor: 'private'!
assertMetacelloExampleVersionSpec: versionSpec
    self
        assertMetacelloExampleProjectReferenceSpec:
            (versionSpec packages packageNamed: 'MetacelloExample' ifAbsent: [ self assert: false ])! !
