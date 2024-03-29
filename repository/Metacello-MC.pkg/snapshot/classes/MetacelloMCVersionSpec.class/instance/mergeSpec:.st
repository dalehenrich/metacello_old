
!MetacelloMCVersionSpec methodsFor: 'merging'!
mergeSpec: anotherSpec

	| newSpec map anotherPackages anotherRepositories |
	newSpec := super mergeSpec: anotherSpec.
	map := anotherSpec mergeMap.
	(anotherPackages := map at: #packages) isEmpty not 
		ifTrue: [ 
			newSpec 
				packages: (self packages isEmpty
					ifTrue: [ anotherPackages ]
					ifFalse: [ self packages mergeSpec: anotherPackages ]) ].
	(anotherRepositories := map at: #repositories) isEmpty not
		ifTrue: [ 
			newSpec 
				repositories: (self repositories isEmpty
					ifTrue: [ anotherRepositories ]
					ifFalse: [ self repositories mergeSpec: anotherRepositories ]) ].
	^newSpec! !
