
!MetacelloPlatform methodsFor: 'repository creation'!
createRepository: aRepositorySpec
    | type |
    type := aRepositorySpec type.
    type = 'http'
        ifTrue: [ 
            ^ MCHttpRepository
                location: aRepositorySpec description
                user: aRepositorySpec username
                password: aRepositorySpec password ].
    type = 'directory'
        ifTrue: [ ^ MCDirectoryRepository new directory: (FileDirectory on: aRepositorySpec description) ].
    Smalltalk
        at: #'MCFileTreeRepository'
        ifPresent: [ :cl | 
            type = 'filetree'
                ifTrue: [ 
                    | description headerSize |
                    description := aRepositorySpec description.
                    headerSize := 'filetree://' size.
                    ^ cl new
                        directory:
                            (FileDirectory on: (aRepositorySpec description copyFrom: headerSize + 1 to: description size)) ] ].
    Smalltalk
        at: #'MCGitHubRepository'
        ifPresent: [ :cl | 
            type = 'github'
                ifTrue: [ ^ cl location: aRepositorySpec description ] ].
    type = 'dictionary'
        ifTrue: [ 
            | description headerSize globalName |
            description := aRepositorySpec description.
            headerSize := 'dictionary://' size.
            globalName := (description copyFrom: headerSize + 1 to: description size) asSymbol.
            ^ Smalltalk
                at: globalName
                ifAbsent: [ 
                    Smalltalk
                        at: globalName
                        put:
                            (MCDictionaryRepository new
                                description: description;
                                yourself) ] ].
    ^ nil! !
