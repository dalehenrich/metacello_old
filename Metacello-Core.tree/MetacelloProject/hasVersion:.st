
!MetacelloProject methodsFor: 'versions'!
hasVersion: versionString

	self version: versionString ifAbsent: [ ^false ].
	^true! !
