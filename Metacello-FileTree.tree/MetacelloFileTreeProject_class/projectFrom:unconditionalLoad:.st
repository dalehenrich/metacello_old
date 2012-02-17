
!MetacelloFileTreeProject class methodsFor: 'scripting'!
projectFrom: aScriptingEngine unconditionalLoad: aBool
    "just create project right here ... from the metacello.json file"

    | repository directory project |
    repository := aScriptingEngine repository.
    directory := repository directory.
    project := MetacelloFileTreeConstructor
        fromRepositoryPath: directory pathName
        forProject: aScriptingEngine projectName.
    project ifNil: [ ^ (aScriptingEngine getConfigurationUnconditionalLoad: aBool) project ].
    ^ project! !
