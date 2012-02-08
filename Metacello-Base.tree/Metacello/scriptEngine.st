
!Metacello methodsFor: 'private'!
scriptEngine
    ^ (Smalltalk
        at: #'MetacelloScriptEngine'
        ifAbsent: [ 
            MetacelloBaseConfiguration ensureMetacello.
            self needsGit
                ifTrue: [ 
                    | project |
                    project := (Smalltalk at: #'ConfigurationOfMetacello') project.
                    project currentVersion load: #('Git') ].
            Smalltalk at: #'MetacelloScriptEngine' ]) new! !
