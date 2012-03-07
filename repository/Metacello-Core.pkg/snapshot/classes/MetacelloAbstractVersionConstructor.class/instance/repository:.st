
!MetacelloAbstractVersionConstructor methodsFor: 'api'!
repository: anObject
    anObject = 'dictionary://Metacello_Configuration_TestX_Repository'
        ifTrue: [ self halt ].
    self root repository: anObject! !
