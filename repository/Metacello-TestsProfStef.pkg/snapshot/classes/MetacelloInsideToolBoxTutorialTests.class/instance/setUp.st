
!MetacelloInsideToolBoxTutorialTests methodsFor: 'running'!
setUp
	super setUp.
	Smalltalk at: #ConfigurationOfExample ifPresent: [:cl | cl removeFromSystem ]
! !
