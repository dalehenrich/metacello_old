
!MetacelloProjectSpec methodsFor: 'accessing'!
name: aString
    ((aString at: 1) isSeparator or: [ (aString at: aString size) isSeparator ])
        ifTrue: [ self error: 'Names are not allowed to have leading or trailing blanks: ' , aString printString ].
    name := aString! !
