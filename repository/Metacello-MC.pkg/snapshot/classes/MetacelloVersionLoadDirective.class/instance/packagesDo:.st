
!MetacelloVersionLoadDirective methodsFor: 'enumerating'!
packagesDo: aBlock

	self loadDirectives do: [:directive | directive packageDo: aBlock ].! !
