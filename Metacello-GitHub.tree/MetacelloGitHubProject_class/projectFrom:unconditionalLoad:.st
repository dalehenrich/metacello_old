
!MetacelloGitHubProject class methodsFor: 'scripting'!
projectFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    "just create project right here ... from the metacello.json file"

    | repository |
    ^ [ 
    repository := MCGitHubRepository
        location: aScriptingEngine repositoryDescription
        version: aScriptingEngine versionString.
    MCRepositoryGroup default addRepository: repository.
    ^ MetacelloFileTreeConstructor
        fromRepositoryPath: repository directory pathName
        forProject: aScriptingEngine projectName ]
        on: FileDoesNotExistException
        do: [ :ex | (aScriptingEngine getConfigurationUnconditionalLoad: unconditionalLoad) project ]! !
