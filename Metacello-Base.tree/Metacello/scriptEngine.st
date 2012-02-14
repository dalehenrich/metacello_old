
!Metacello methodsFor: 'private'!
scriptEngine
    scriptEngine ifNil: [ scriptEngine := (self class scriptEngineClass: self ensureList) new ].
    ^ scriptEngine! !
