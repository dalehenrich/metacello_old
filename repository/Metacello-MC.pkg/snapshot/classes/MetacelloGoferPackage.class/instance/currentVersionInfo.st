
!MetacelloGoferPackage methodsFor: 'querying'!
currentVersionInfo

	| wc |
	(wc := self workingCopy) ~~ nil
		ifTrue: [ 
			wc ancestry ancestors isEmpty not
				ifTrue: [ ^wc ancestry ancestors first ]].
	^nil! !
