
!MetacelloAbstractVersionConstructor methodsFor: 'api'!
removeProject: aString

	| spec |
	spec := 
		(self project projectReferenceSpec)
			name: aString;
			yourself.
	self root packages remove: spec.
! !
