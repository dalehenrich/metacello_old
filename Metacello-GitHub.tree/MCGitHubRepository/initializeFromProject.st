
!MCGitHubRepository methodsFor: 'initialize-release'!
initializeFromProject
    directory := MetacelloGitHubProject repoDirectoryFrom: self projectPath version: self projectVersion.
    self readonly: true! !
