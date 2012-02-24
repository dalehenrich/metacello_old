
!MetacelloPreLoadDirective methodsFor: 'printing'!
label

	^super label, ' >> ', self spec preLoadDoIt value asString! !
