
!MetacelloMCVersionSpec methodsFor: 'querying'!
currentlyLoadedClassesInVersion
	| classes |
	classes := Set new.
	self
		projectDo: [ :ignored |  ]
		packageDo: [ :packageSpec | 
			| wc |
			wc := [ packageSpec workingCopy ] on: Error do: [ :ex | ex return: nil ].
			wc ~~ nil
				ifTrue: [ classes addAll: wc packageInfo classes ] ]
		groupDo: [ :ignored |  ].
	^ classes! !
