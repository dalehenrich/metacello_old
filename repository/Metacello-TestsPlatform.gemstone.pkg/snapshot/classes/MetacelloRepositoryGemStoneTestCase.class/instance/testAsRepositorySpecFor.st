
!MetacelloRepositoryGemStoneTestCase methodsFor: 'tests'!
testAsRepositorySpecFor
    | project testBlock |
    project := self project.
    testBlock := [ :pkg :expectedType1 :expectedType2 | 
    | repoSpec1 repo repoSpec2 |
    repoSpec1 := pkg repositorySpecs first.
    self assert: repoSpec1 type = expectedType1.
    repo := repoSpec1 createRepository.
    repoSpec2 := repo asRepositorySpecFor: project.
    self assert: repoSpec2 type = expectedType2.
    expectedType1 = expectedType2
        ifTrue: [ self assert: repoSpec1 description = repoSpec2 description ]
        ifFalse: [ 
            "special case for standard directory type that defaults to MCServerDirectoryRepository"
            self
                assert:
                    (repoSpec1 description copyFrom: 'server://' size + 1 to: repoSpec1 description size) = repoSpec2 description ] ].
    testBlock
        value: ((project version: '1.0-baseline') packageNamed: 'Example-Core')
        value: 'directory'
        value: 'directory'.
    testBlock
        value: ((project version: '1.1-baseline') packageNamed: 'Example-Core')
        value: 'clientDirectory'
        value: 'clientDirectory'.
    testBlock
        value: ((project version: '1.2-baseline') packageNamed: 'Example-Core')
        value: 'serverDirectory'
        value: 'directory'.
    testBlock
        value: ((project version: '1.4-baseline') packageNamed: 'Example-Core')
        value: 'http'
        value: 'http'.
    testBlock
        value: ((project version: '1.5-baseline') packageNamed: 'Example-Core')
        value: 'dictionary'
        value: 'dictionary'! !
