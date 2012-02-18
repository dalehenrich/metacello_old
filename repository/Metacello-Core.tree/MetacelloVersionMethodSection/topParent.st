
!MetacelloVersionMethodSection methodsFor: 'accessing'!
topParent
	self parent == nil
		ifTrue: [ ^ self ].
	^ self parent topParent! !
