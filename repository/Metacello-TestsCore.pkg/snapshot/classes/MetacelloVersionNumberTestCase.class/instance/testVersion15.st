
!MetacelloVersionNumberTestCase methodsFor: 'tests'!
testVersion15

	self assert: ((self versionClass fromString: '1.0-beta.0') < (self versionClass fromString: '1.0-beta.1')).
! !
