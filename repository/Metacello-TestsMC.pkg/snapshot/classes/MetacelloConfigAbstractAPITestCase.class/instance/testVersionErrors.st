
!MetacelloConfigAbstractAPITestCase methodsFor: 'test version'!
testVersionErrors
	| project  |
	project := self project.
	
	self should: [project version: 'does not exist' ] raise: MetacelloVersionDoesNotExistError.
	self should: [project version: #'does not exist' ] raise: MetacelloSymbolicVersionDoesNotExistError.

! !
