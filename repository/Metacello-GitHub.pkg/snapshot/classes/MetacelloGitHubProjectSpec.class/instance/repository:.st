
!MetacelloGitHubProjectSpec methodsFor: 'accessing'!
repository: aString
    (aString beginsWith: MCGitHubRepository description)
        ifFalse: [ ^ self error: 'repository spec for github project must be a github repository' ].
    self projectPackage repository: aString! !
