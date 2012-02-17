
!MetacelloGitHubProject class methodsFor: 'scripting'!
projectFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    "just create project right here ... from the metacello.json file"

    | projectPath projectVersion versionString description headerSize index |
    description := aScriptingEngine repositoryDescription.
    headerSize := 'github://' size.
    description := description copyFrom: headerSize + 1 to: description size.
    versionString := aScriptingEngine versionString.
    (index := description indexOf: $:) = 0
        ifTrue: [ 
            projectPath := description.
            projectVersion := versionString ]
        ifFalse: [ 
            projectPath := description copyFrom: 1 to: index - 1.
            projectVersion := versionString ~~ nil
                ifTrue: [ versionString ]
                ifFalse: [ description copyFrom: index + 1 to: description size ] ].
    ^ [ self projectFrom: projectPath version: projectVersion ]
        on: FileDoesNotExistException
        do: [ :ex | (aScriptingEngine halt getConfigurationUnconditionalLoad: unconditionalLoad) project ]! !
