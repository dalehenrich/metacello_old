
!MetacelloInsideToolBoxTutorialTests methodsFor: 'running'!
tearDown
	super tearDown.
	Smalltalk at: #ConfigurationOfExample ifPresent: [:cl | cl removeFromSystem ]
! !
