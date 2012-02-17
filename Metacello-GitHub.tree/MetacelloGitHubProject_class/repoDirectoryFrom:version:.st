
!MetacelloGitHubProject class methodsFor: 'instance creation'!
repoDirectoryFrom: projectPath version: versionString
    | url directory repoDirectory archive |
    url := 'http://github.com/' , projectPath , '/zipball/' , versionString.
    directory := (self cacheDirectoryFor: projectPath) directoryNamed: versionString.
    self downloadFile: url to: '/tmp/github.zip'.
    archive := ZipArchive new
        readFrom: (FileStream readOnlyFileNamed: '/tmp/github.zip');
        yourself.
    repoDirectory := directory directoryNamed: archive members first fileName.
    repoDirectory exists
        ifFalse: [ archive extractAllTo: directory ].
    ^ repoDirectory! !
