
!MetacelloProjectSpec methodsFor: 'accessing'!
basicVersionString
    ^ (self versionOrNil ifNil: [ ^ nil ]) versionString! !
