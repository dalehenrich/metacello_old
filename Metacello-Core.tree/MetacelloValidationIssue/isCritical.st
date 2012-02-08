
!MetacelloValidationIssue methodsFor: 'testing'!
isCritical

	^self isError or: [ self isCriticalWarning ]! !
