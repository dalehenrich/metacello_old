
!MetacelloPostLoadDirective methodsFor: 'printing'!
label

	^super label, ' >> ', self spec postLoadDoIt value asString! !
