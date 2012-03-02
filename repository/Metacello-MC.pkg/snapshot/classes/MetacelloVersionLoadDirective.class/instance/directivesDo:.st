
!MetacelloVersionLoadDirective methodsFor: 'enumerating'!
directivesDo: aBlock

	aBlock value: self.
	self loadDirectives do: [:directive | directive directivesDo: aBlock ].! !
