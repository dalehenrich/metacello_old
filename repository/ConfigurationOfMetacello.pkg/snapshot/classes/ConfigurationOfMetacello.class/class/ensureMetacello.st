
!ConfigurationOfMetacello class methodsFor: 'private'!
ensureMetacello
    "Bootstrap Metacello and load the 'default' group"

    self ensureMetacello: #('default')! !
