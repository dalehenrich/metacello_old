
!MetacelloGemStonePlatform methodsFor: 'attributes'!
defaultPlatformAttributes

	| stoneVersionAtts |
	(stoneVersionAtts := self stoneVersionAttributes) ifNil: [^ #( #gemstone )].
	^ stoneVersionAtts! !
