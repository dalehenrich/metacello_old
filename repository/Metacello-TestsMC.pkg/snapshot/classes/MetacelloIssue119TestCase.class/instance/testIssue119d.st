
!MetacelloIssue119TestCase methodsFor: 'tests'!
testIssue119d
    | project issues reasonCodes |
    gofer version: 'MetacelloTestConfigurationOfProjectIssue119-dkh.4'.
    gofer metacelloLoad.
    project := self project.	"no errors"
    [ self project ]
        on: MetacelloErrorInProjectConstructionNotification
        do: [ :ex | ex resume: true ].	"no error"
    issues := MetacelloToolBox validateConfiguration: (Smalltalk at: #'MetacelloTestConfigurationOfProjectIssue119').
    reasonCodes := issues collect: [ :each | each reasonCode ].
    self assert: reasonCodes isEmpty.
    self assert: project versions size = 2.
    project versions do: [ :vrsn | self assert: (#('4.0' '4.0-baseline') includes: vrsn versionString) ].
    self shouldnt: [ project version: '4.0-baseline' ] raise: MetacelloVersionDefinitionError.
    self shouldnt: [ project version: '4.0' ] raise: MetacelloVersionDefinitionError! !
