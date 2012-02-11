
!Metacello methodsFor: 'private'!
scriptEngine
    scriptEngine ifNil: [ scriptEngine := self class scriptEngineClass new ].
    ^ scriptEngine! !
