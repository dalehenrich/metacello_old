
!MetacelloVersionValidator class methodsFor: 'accessing'!
reasonCodeDescriptions

	reasonCodeDescriptions ifNil: [ reasonCodeDescriptions := self populateReasonCodeDescriptions ].
	^reasonCodeDescriptions! !
