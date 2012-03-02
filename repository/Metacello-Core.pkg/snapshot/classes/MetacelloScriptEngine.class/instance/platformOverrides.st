
!MetacelloScriptEngine methodsFor: 'accessing'!
platformOverrides
    platformOverrides ifNil: [ platformOverrides := self class platformOverrides ].
    ^ platformOverrides! !
