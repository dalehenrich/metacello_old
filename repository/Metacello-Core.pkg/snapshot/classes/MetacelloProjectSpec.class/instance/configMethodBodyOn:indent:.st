
!MetacelloProjectSpec methodsFor: 'printing'!
configMethodBodyOn: aStream indent: indent
    | hasVersionString hasOperator hasProjectPackage hasLoads hasClassName hasPreLoadDoIt hasPostLoadDoIt hasRepository |
    hasClassName := className ~~ nil and: [ className ~= self constructClassName ].
    hasVersionString := self versionString ~~ nil.
    hasOperator := operator ~~ nil.
    hasProjectPackage := self getProjectPackage ~~ nil
        and: [ self packageRepository ~~ nil or: [ hasClassName & (self projectPackage file ~= className) ] ].
    hasRepository := self getRepositories ~~ nil.
    hasLoads := self loads ~~ nil.
    hasPreLoadDoIt := self getPreLoadDoIt ~~ nil.
    hasPostLoadDoIt := self getPostLoadDoIt ~~ nil.
    hasClassName
        ifTrue: [ 
            hasVersionString | hasOperator | hasProjectPackage | hasRepository | hasLoads
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'className: ' , self className printString.
            hasVersionString | hasPreLoadDoIt | hasPostLoadDoIt | hasOperator | hasRepository | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasVersionString
        ifTrue: [ 
            | vs |
            hasClassName | hasOperator | hasProjectPackage | hasRepository | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
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
            hasPreLoadDoIt | hasPostLoadDoIt | hasOperator | hasProjectPackage | hasRepository | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasPreLoadDoIt
        ifTrue: [ 
            hasClassName | hasOperator | hasProjectPackage | hasRepository | hasLoads | hasPreLoadDoIt
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
            hasPostLoadDoIt | hasOperator | hasProjectPackage | hasRepository | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasPostLoadDoIt
        ifTrue: [ 
            hasClassName | hasOperator | hasProjectPackage | hasRepository | hasLoads | hasPostLoadDoIt
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
            hasOperator | hasProjectPackage | hasRepository | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasOperator
        ifTrue: [ 
            hasClassName | hasVersionString | hasProjectPackage | hasRepository | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'operator: #' , self operator asString printString.
            hasProjectPackage | hasRepository | hasLoads
                ifTrue: [ aStream nextPut: $; ] ].
    hasLoads
        ifTrue: [ 
            hasClassName | hasVersionString | hasOperator | hasProjectPackage | hasRepository | hasPreLoadDoIt | hasPostLoadDoIt
                ifTrue: [ 
                    aStream
                        cr;
                        tab: indent + 1 ]
                ifFalse: [ aStream space ].
            aStream nextPutAll: 'loads: #('.
            self loads do: [ :str | aStream nextPutAll: str printString , ' ' ].
            aStream nextPut: $).
            hasProjectPackage | hasRepository
                ifTrue: [ aStream nextPut: $; ] ].
    hasRepository | hasProjectPackage
        ifTrue: [ 
            | hasName |
            hasName := (className notNil and: [ self getProjectPackage notNil ])
                and: [ self projectPackage file ~= self className and: [ (self projectPackage file beginsWith: self projectPackage name) not ] ].
            hasName
                ifTrue: [ 
                    hasClassName | hasVersionString | hasOperator | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
                        ifTrue: [ 
                            aStream
                                cr;
                                tab: indent + 1 ]
                        ifFalse: [ aStream space ].
                    aStream nextPutAll: 'file: ' , self projectPackage file printString.
                    hasRepository
                        ifTrue: [ aStream nextPut: $; ] ].
            hasRepository
                ifTrue: [ 
                    | repos |
                    repos := self repositories.
                    repos map values size = 1
                        ifTrue: [ 
                            hasClassName | hasVersionString | hasOperator | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt
                                ifTrue: [ 
                                    aStream
                                        cr;
                                        tab: indent + 1 ]
                                ifFalse: [ aStream space ].
                            self packageRepository configMethodCascadeOn: aStream lastCascade: true ]
                        ifFalse: [ 
                            aStream cr.
                            self repositories configMethodCascadeOn: aStream indent: indent ] ] ]! !
