
!MetacelloFileTreeProject class methodsFor: 'scripting'!
projectFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    "just create project right here ... from the metacello.json file"

    | repository directory |
    repository := aScriptingEngine repository.
    directory := repository directory.
    ^ [ MetacelloFileTreeConstructor fromRepositoryPath: directory pathName forProject: aScriptingEngine projectName ]
        on: FileDoesNotExistException
        do: [ :ex | (aScriptingEngine getConfigurationUnconditionalLoad: unconditionalLoad) project ]! !
