
!MetacelloProject methodsFor: 'accessing'!
loadType
	"#atomic or #linear"

	loadType == nil ifTrue: [ ^#atomic ].
	^loadType! !
