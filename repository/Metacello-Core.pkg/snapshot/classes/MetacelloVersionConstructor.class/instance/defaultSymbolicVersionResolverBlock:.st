
!MetacelloVersionConstructor methodsFor: 'private'!
defaultSymbolicVersionResolverBlock: receiver
	^ [ :symbolicVrsn :pragma | 
	| result |
	result := nil.
	(pragma argumentAt: 1) = symbolicVrsn
		ifTrue: [ 
			self symbolicVersion: symbolicVrsn.
			result := [ receiver perform: pragma selector ] on: MetacelloVersionDoesNotExistError do: [ :ex | ex return: nil ] ].
	result ]! !
