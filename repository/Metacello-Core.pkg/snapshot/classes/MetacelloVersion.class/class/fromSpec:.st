
!MetacelloVersion class methodsFor: 'instance creation'!
fromSpec: aMetacelloVersionSpec

	^(self fromString: aMetacelloVersionSpec versionString) 
		spec: aMetacelloVersionSpec;
		yourself! !
