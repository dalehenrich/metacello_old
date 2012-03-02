
!ConfigurationOfMetacello class methodsFor: 'metacello release process'!
releaseMetacelloVersion
	"self releaseMetacelloVersion"
	
	self 
		copyConfigToRepos;
		backupToSqueakSource;
		yourself! !
