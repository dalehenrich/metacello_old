
!MetacelloVersionNumberTestCase methodsFor: 'tests'!
testVersion11

	| v1 v2 |
	v1 := self versionClass fromString: '1.0.1b'.
	v2 := self versionClass fromString: '1.0.1a'.
	self assert: (v1 >= v2).
	self assert: (v2 <= v1)! !
