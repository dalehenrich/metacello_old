
!MetacelloMCProjectSpec methodsFor: 'querying'!
repository
    self repositories isEmpty
        ifTrue: [ ^ nil ].
    ^ self repositories map values first! !
