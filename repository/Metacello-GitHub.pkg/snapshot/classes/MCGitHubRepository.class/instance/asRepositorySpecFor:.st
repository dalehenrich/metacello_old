
!MCGitHubRepository methodsFor: 'accessing'!
asRepositorySpecFor: aMetacelloMCProject
    ^ aMetacelloMCProject repositorySpec
        description: self description;
        type: 'github';
        yourself! !
