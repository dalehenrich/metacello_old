
!Metacello methodsFor: 'actions api'!
get
    self addStatement: #'get' args: #().
    ^ self execute! !
