
!MetacelloCommonMCSpecLoader methodsFor: 'private'!
retryingResolvePackageSpecReferences: packageSpec gofer: gofer

	| retryCount references repositoryError |
	retryCount := 0.
	references := #().
	[references isEmpty
		and: [retryCount < 3]]
		whileTrue: [retryCount > 0
				ifTrue: [Transcript cr; show: '...RETRY->', packageSpec file ].
			references := [self resolvePackageSpecReferences: packageSpec gofer: gofer]
						on: Error , GoferRepositoryError
						do: [:ex | 
							retryCount >= 2
								ifTrue: [(ex isKindOf: GoferRepositoryError)
										ifTrue: [
											"ignore repository errors at this point, in case an alternate repository is in the list "
											Transcript cr; show: 'gofer repository error: ', ex description printString, '...ignoring'. 
											repositoryError := ex.
											ex resume: #()]
										ifFalse: [ex pass]].
							ex return: #()].
			retryCount := retryCount + 1].
	references isEmpty 
		ifTrue: [ | repositoryString |
			repositoryString := ''.
			gofer repositories do: [:repo | repositoryString := repositoryString, ' ', repo description ].
			Transcript cr; show: '...FAILED->', packageSpec file.
			self error: 'Could not resolve: ', packageSpec name, ' [', packageSpec file, ']', ' in', repositoryString,
				(repositoryError == nil 
					ifTrue: [''] 
					ifFalse: [
						"report repository error to user here, since failure here is likely to be due to earlier repository error"
						' ERROR: ', repositoryError description printString ]) ].
	^references! !
