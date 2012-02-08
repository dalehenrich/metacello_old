
!MetacelloProject methodsFor: 'private'!
attributes

	^(OrderedCollection with: #common)
		addAll: self platformAttributes;
		yourself
! !
