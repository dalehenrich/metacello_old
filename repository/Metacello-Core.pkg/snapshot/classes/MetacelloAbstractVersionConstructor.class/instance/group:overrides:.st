
!MetacelloAbstractVersionConstructor methodsFor: 'api'!
group: aString overrides: aStringOrCollection

	| spec |
	spec := 
		(self project groupSpec)
			name: aString;
			includes: aStringOrCollection;
			yourself.
	self root packages add: spec.
! !
