
!MCGitHubRepository class methodsFor: 'private'!
cacheDirectoryFor: projectPath
    ^ (self cacheDirectory directoryNamed: projectPath)
        assureExistence;
        yourself! !
