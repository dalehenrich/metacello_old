
!MetacelloGitHubProjectSpec methodsFor: 'querying'!
repositories
    projectPackage ifNil: [ ^ nil ].
    ^ self projectPackage repositories! !
