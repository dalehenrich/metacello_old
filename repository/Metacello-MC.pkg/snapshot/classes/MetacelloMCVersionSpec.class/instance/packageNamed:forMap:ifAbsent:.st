
!MetacelloMCVersionSpec methodsFor: 'querying'!
packageNamed: aString forMap: map ifAbsent: aBlock

	| package |
	package := map
				at: aString
				ifAbsent: [].
	package == nil
		ifTrue: [
			(aString = 'default' or: [ aString = 'ALL'])
				ifTrue: [ 
					package := self project groupSpec name: aString;
				 		includes: self packageNames;					 
						yourself ]
				ifFalse: [ ^aBlock value ]].
	^package! !
