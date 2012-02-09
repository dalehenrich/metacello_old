
!Metacello class methodsFor: 'private'!
scriptEngineClass
    ^ Smalltalk
        at: #'MetacelloScriptEngine'
        ifAbsent: [ 
            MetacelloBaseConfiguration ensureMetacello.
            Smalltalk at: #'MetacelloScriptEngine' ]! !
