
!MetacelloAbstractVersionConstructor methodsFor: 'api'!
package: aString

	| spec |
	spec := 
		(self project packageSpec)
			name: aString;
			yourself.
	self root packages add: spec.
! !
