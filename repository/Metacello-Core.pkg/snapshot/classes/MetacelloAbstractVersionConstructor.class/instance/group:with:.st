
!MetacelloAbstractVersionConstructor methodsFor: 'api'!
group: aString with: aStringOrCollection

	| spec |
	spec := 
		(self project groupSpec)
			name: aString;
			includes: aStringOrCollection;
			yourself.
	self root packages merge: spec.
! !
