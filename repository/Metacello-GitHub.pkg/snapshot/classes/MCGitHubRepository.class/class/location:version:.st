
!MCGitHubRepository class methodsFor: 'instance creation'!
location: locationUrl version: versionString
    ^ (self parseLocation: locationUrl version: versionString)
        initializeFromProject;
        yourself! !
