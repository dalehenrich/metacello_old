
!Metacello methodsFor: 'actions api'!
fetch
    self addStatement: #'fetch' args: #().
    ^ self execute! !
