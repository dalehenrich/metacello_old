
!MetacelloGitHubProject class methodsFor: 'instance creation'!
location: locationUrl version: versionString forProject: projectName
    | repository |
    repository := MCGitHubRepository location: locationUrl version: versionString.
    MCRepositoryGroup default addRepository: repository.
    ^ MetacelloFileTreeConstructor
        fromRepositoryPath: repository directory pathName
        forProject: projectName
        repository: repository description! !
