
!MCFileTreeRepository methodsFor: '*metacello-filetree'!
asRepositorySpecFor: aMetacelloMCProject
    ^ aMetacelloMCProject repositorySpec
        description: self description;
        type: 'filetree';
        yourself! !
