
!ConfigurationOfGitMetacello class methodsFor: 'loading'!
loadLatestVersion
	"self loadLatestVersion"

	self project updateProject.
	^self project latestVersion load! !
