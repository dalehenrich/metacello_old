
!MetacelloMCProjectSpec methodsFor: 'accessing'!
repository: aString username: username password: password
    self repositories repository: aString username: username password: password.
    projectPackage ifNotNil: [ self projectPackage repository: aString username: username password: password ]! !
