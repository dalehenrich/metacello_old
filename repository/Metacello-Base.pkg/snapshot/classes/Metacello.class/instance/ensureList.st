
!Metacello methodsFor: 'accessing'!
ensureList
    ensureList ifNil: [ ensureList := OrderedCollection with: #'MetacelloScriptEngine' -> 'default' ].
    ^ ensureList! !
