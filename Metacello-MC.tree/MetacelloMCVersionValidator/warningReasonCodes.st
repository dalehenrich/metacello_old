
!MetacelloMCVersionValidator methodsFor: 'private'!
warningReasonCodes
	^ super warningReasonCodes, #(#loadWarning #notDevelopmentVersion #stableDevelopmentVersion)! !
