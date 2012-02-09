
!MetacelloGoferFunctionalTest methodsFor: 'running'!
tearDown
	super tearDown.
	MetacelloMonticelloResource reset. "testCommitPackageSpec modifies the repository resource"! !
