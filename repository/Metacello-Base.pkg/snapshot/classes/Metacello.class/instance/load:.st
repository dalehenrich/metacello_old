
!Metacello methodsFor: 'actions api'!
load: required
    self addStatement: #'load:' args: {required}.
    ^ self execute! !
