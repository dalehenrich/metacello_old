
!MetacelloGitHubProject class methodsFor: 'instance creation'!
projectFrom: projectPath version: versionString
    | url directory repository repoDirectory archive |
    url := 'http://github.com/' , projectPath , '/zipball/' , versionString.
    directory := (self cacheDirectoryFor: projectPath) directoryNamed: versionString.
    self downloadFile: url to: '/tmp/github.zip'.
    archive := ZipArchive new
        readFrom: (FileStream readOnlyFileNamed: '/tmp/github.zip');
        yourself.
    repoDirectory := directory directoryNamed: archive members first fileName.
    repoDirectory exists
        ifFalse: [ archive extractAllTo: directory ].
    repository := MCFileTreeRepository new
        directory: repoDirectory;
        readonly: true;
        yourself.
    MCRepositoryGroup default addRepository: repository.
    ^ [ self projectFrom: repoDirectory pathName ]
        on: FileDoesNotExistException
        do: [ :ex | 
            "that's fine ... no metacello spec for repository contents"
            nil ]! !
