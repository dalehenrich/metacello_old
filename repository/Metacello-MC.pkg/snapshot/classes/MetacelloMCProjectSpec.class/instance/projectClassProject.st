
!MetacelloMCProjectSpec methodsFor: 'querying'!
projectClassProject
	"indirection needed when projectClass is _not_ a subclass of MetacelloProject"
	
	^self projectClass new project! !
