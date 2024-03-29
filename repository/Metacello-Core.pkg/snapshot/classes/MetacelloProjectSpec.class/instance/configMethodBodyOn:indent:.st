
!MetacelloProjectSpec methodsFor: 'printing'!
configMethodBodyOn: aStream indent: indent
    | hasVersionString hasOperator hasProjectPackage hasLoads hasClassName hasPreLoadDoIt hasPostLoadDoIt |
    hasClassName := className ~~ nil and: [ className ~= self constructClassName ].
    hasVersionString := self versionString ~~ nil.
    hasOperator := operator ~~ nil.
    hasProjectPackage := self packageRepository ~~ nil
        or: [ hasClassName & (self getFile ~~ nil or: [ className ~= self name ]) ].
    hasLoads := self loads ~~ nil.
    hasPreLoadDoIt := self getPreLoadDoIt ~~ nil.
    hasPostLoadDoIt := self getPostLoadDoIt ~~ nil.
    hasClassName
        ifTrue: [ 
            hasVersionString | hasOperator | hasProjectPackage | hasLoads
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'className: ' , self className printString.
            hasVersionString | hasPreLoadDoIt | hasPostLoadDoIt | hasOperator | hasLoads | hasProjectPackage
                ifTrue: [ aStream nextPut: $; ] ].
    hasVersionString
        ifTrue: [ 
            | vs |
            hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            vs := self versionString.
            aStream nextPutAll: 'versionString: '.
            vs isSymbol
                ifTrue: [ aStream nextPut: $# ].
            aStream nextPutAll: vs asString printString.
            hasPreLoadDoIt | hasPostLoadDoIt | hasOperator | hasProjectPackage | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasPreLoadDoIt
        ifTrue: [ 
            hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPreLoadDoIt
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'preLoadDoIt: '.
            self preLoadDoIt value isSymbol
                ifTrue: [ 
                    aStream
                        nextPut: $#;
                        nextPutAll: self preLoadDoIt value asString printString ]
                ifFalse: [ aStream nextPutAll: self preLoadDoIt value asString ].
            hasPostLoadDoIt | hasOperator | hasProjectPackage | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasPostLoadDoIt
        ifTrue: [ 
            hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPostLoadDoIt
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'postLoadDoIt: '.
            self postLoadDoIt value isSymbol
                ifTrue: [ 
                    aStream
                        nextPut: $#;
                        nextPutAll: self postLoadDoIt value asString printString ]
                ifFalse: [ aStream nextPutAll: self postLoadDoIt value asString ].
            hasOperator | hasProjectPackage | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasOperator
        ifTrue: [ 
            hasClassName | hasVersionString | hasProjectPackage | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'operator: #' , self operator asString printString.
            hasProjectPackage | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasLoads
        ifTrue: [ 
            hasClassName | hasVersionString | hasOperator | hasProjectPackage | hasPreLoadDoIt | hasPostLoadDoIt
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'loads: #('.
            self loads do: [ :str | aStream nextPutAll: str printString , ' ' ].
            aStream nextPut: $).
            hasProjectPackage
                ifTrue: [ aStream nextPut: $; ] ].
    hasProjectPackage
        ifTrue: [ 
            | hasName hasRepo |
            hasRepo := self packageRepository ~~ nil.
            hasName := self file ~= self className.
            hasName
                ifTrue: [ 
                    hasClassName | hasVersionString | hasOperator | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
                        ifTrue: [ 
                            aStream
                                cr;
                                tab: indent + 1 ]
                        ifFalse: [ aStream space ].
                    aStream nextPutAll: 'file: ' , self file printString.
                    hasRepo
                        ifTrue: [ aStream nextPut: $; ] ].
            hasRepo
                ifTrue: [ 
                    | repos |
                    repos := self repositories.
                    repos map values size = 1
                        ifTrue: [ 
                            hasClassName | hasVersionString | hasOperator | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt | hasName
                                ifTrue: [ 
                                    aStream
                                        cr;
                                        tab: indent + 1 ]
                                ifFalse: [ aStream space ].
                            self packageRepository configMethodCascadeOn: aStream lastCascade: true ]
                        ifFalse: [ 
                            aStream cr.
                            self repositories configMethodCascadeOn: aStream indent: indent ] ] ]! !
