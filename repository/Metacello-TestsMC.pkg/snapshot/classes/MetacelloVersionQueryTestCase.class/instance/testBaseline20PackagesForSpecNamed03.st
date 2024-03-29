
!MetacelloVersionQueryTestCase methodsFor: 'tests'!
testBaseline20PackagesForSpecNamed03
	| project version expected list |
	project := self projectProject.
	version := project version: '2.0-baseline'.
	expected := #('Project-Core' 'Project-Tests').
	list := version packagesForSpecNamed: 'ALL'.
	self assert: (list size = expected size).
	list do: [:pkg |
		self assert: (expected includes: pkg name) ].! !
