
!FileDirectory methodsFor: '*metacello-mc'!
asRepositorySpecFor: aMetacelloMCProject

	^(aMetacelloMCProject repositorySpec)
		description:  self fullName;
	 	type: 'directory';
		yourself! !
