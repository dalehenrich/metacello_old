
!MetacelloGitHubProject class methodsFor: 'instance creation'!
projectFrom: projectPath version: versionString
    | repository repoDirectory |
    repoDirectory := self repoDirectoryFrom: projectPath version: versionString.
    repository := MCGitHubRepository new
        projectPath: projectPath;
        projectVersion: versionString;
        directory: repoDirectory;
        readonly: true;
        yourself.
    MCRepositoryGroup default addRepository: repository.
    ^ MetacelloFileTreeConstructor fromRepositoryPath: repoDirectory pathName! !
