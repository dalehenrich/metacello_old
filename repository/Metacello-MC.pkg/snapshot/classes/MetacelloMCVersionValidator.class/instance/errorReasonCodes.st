
!MetacelloMCVersionValidator methodsFor: 'private'!
errorReasonCodes
	^ super errorReasonCodes, #(#loadError #testFailures )! !
