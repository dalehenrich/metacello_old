
!MetacelloMCProjectSpec methodsFor: 'loading'!
loadVersion: aVersionOrNil
    "Load the correct version of the project"

    | vrsn mcLoader list |
    vrsn := aVersionOrNil.
    vrsn == nil
        ifTrue: [ 
            [ vrsn := self version ]
                on: MetacelloVersionDoesNotExistError
                do: [ :ex | 
                    ^ (MetacelloProjectSpecLoadError projectSpec: self)
                        versionDoesNotExistException: ex;
                        signal:
                                'No version found for ' , self versionString printString , ' of ' , self className asString , ' because: '
                                        , ex description ] ].
    mcLoader := self loader copy.
    mcLoader operator: self operator.
    vrsn loader: mcLoader.
    list := (mcLoader ignoreImage
        ifTrue: [ self loadListForVersion: vrsn ]
        ifFalse: [ vrsn packageAndProjectNamesToLoad: (self loadListForVersion: vrsn) loader: mcLoader ]) asSet.
    MetacelloPlatform current
        useStackCacheDuring: [ :dict | 
            | projectCache cachedList |
            projectCache := dict at: self projectClass ifAbsent: [ dict at: self projectClass put: Dictionary new ].
            (cachedList := projectCache at: vrsn ifAbsent: [  ]) == nil
                ifTrue: [ projectCache at: vrsn put: list ]
                ifFalse: [ 
                    (cachedList size = list size and: [ cachedList includesAllOf: list ])
                        ifTrue: [ 
                            "no need to refetch list ... recursion stoppper (Issue 95)"
                            ^ self ]
                        ifFalse: [ projectCache at: vrsn put: list ] ].
            mcLoader preLoad: self.
            (MetacelloLoadProjectSpecVersionNotification new
                projectSpec: self;
                versionString: vrsn versionString) signal.
            vrsn fetchRequiredFromArray: list.
            mcLoader postLoad: self ]
        defaultDictionary: Dictionary new! !
