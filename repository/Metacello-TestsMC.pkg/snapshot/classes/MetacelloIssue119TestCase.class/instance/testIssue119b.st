
!MetacelloIssue119TestCase methodsFor: 'tests'!
testIssue119b
    | project issues reasonCodes |
    gofer version: 'MetacelloTestConfigurationOfProjectIssue119-dkh.2'.
    gofer metacelloLoad.
    project := self project.	"no errors"
    self
        should: [ 
            [ self project ]
                on: MetacelloErrorInProjectConstructionNotification
                do: [ :ex | ex resume: true ] ]
        raise: Error.	"expect error"
    issues := MetacelloToolBox validateConfiguration: (Smalltalk at: #'MetacelloTestConfigurationOfProjectIssue119').
    reasonCodes := issues collect: [ :each | each reasonCode ].
    self assert: reasonCodes size = 3.
    #(#'versionCreationError' #'noVersionsDefined')
        do: [ :expectedReasonCode | self assert: (reasonCodes includes: expectedReasonCode) ].
    self should: [ project version: '2.0-baseline' ] raise: MetacelloVersionDefinitionError.
    self should: [ project version: '2.0' ] raise: MetacelloVersionDefinitionError! !
