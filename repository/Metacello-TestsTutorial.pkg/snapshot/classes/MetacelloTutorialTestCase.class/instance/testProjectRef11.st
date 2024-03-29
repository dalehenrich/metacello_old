
!MetacelloTutorialTestCase methodsFor: 'tests-project ref'!
testProjectRef11

	| project loadedPackages loader |
	project := self projectRefProject.

	loader := (project version: '1.1') load.
	loadedPackages := loader loadedPackages asArray. 
	self assert: loadedPackages size = 8.
	self assert: (loadedPackages indexOf: 'Example-Core-anon.15') > 0.
	self assert: (loadedPackages indexOf: 'Example-AddOn-anon.1') >
						(loadedPackages indexOf: 'Example-Core-anon.15').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOn-anon.1').
	self assert: (loadedPackages indexOf: 'Example-Tests-anon.4') >
						(loadedPackages indexOf: 'Example-Core-anon.15').
	self assert: (loadedPackages indexOf: 'Example-AddOnTests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.4').


	self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > 
						(loadedPackages indexOf: 'Example-Core-anon.15').
	self assert: (loadedPackages indexOf: 'Project-Core-anon.1') > 
						(loadedPackages indexOf: 'Example-AddOn-anon.1').

	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') > 
						(loadedPackages indexOf: 'Project-Core-anon.1').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Example-Tests-anon.4').
	self assert: (loadedPackages indexOf: 'Project-Tests-anon.1') >
						(loadedPackages indexOf: 'Example-AddOnTests-anon.1').
! !
