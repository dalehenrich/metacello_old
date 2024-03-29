
!MetacelloConfigAPIToolBoxTestCase methodsFor: 'test package'!
testPackagePreloadPostload
	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.2.5-baseline') spec.
	self deny: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result').
	self deny: (Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result').
	version load.
	self assert: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result').
	self assert: (Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result').! !
