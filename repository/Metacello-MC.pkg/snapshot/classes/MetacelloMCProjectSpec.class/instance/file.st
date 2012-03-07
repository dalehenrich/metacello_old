
!MetacelloMCProjectSpec methodsFor: 'querying'!
file
    file ifNil: [ ^ self className ].
    ^ file! !
