
!MetacelloSqueakPlatform methodsFor: 'attributes'!
defaultPlatformAttributes
	| attributes versionString |
	attributes := OrderedCollection with: #squeakCommon with: #squeak.
	Smalltalk
		at: #SystemVersion
		ifPresent: [:cl | 
			versionString := cl current version.
			(versionString beginsWith: 'Squeak3.10')
				ifTrue: [attributes add: #'squeak3.10.x'].
			(versionString beginsWith: 'Squeak4')
				ifTrue: [attributes add: #'squeak4.x'.
					(versionString beginsWith: 'Squeak4.1')
						ifTrue: [attributes add: #'squeak4.1.x']
						ifFalse: [(versionString beginsWith: 'Squeak4.2')
								ifTrue: [attributes add: #'squeak4.2.x']]]].
	^ attributes! !
