
!MetacelloScriptingResource methodsFor: 'external repository'!
setUpExternalCore
    "self reset"

    | reference className definitionArray versionInfo |
    reference := GoferVersionReference name: 'External-Core-dkh.1'.
    className := #'ExternalCore'.
    definitionArray := {(MCClassDefinition
        name: className
        superclassName: #'Object'
        category: reference packageName
        instVarNames: #()
        comment: '').
    (MCMethodDefinition
        className: className asString
        classIsMeta: true
        selector: 'externalAuthorName'
        category: 'cat'
        timeStamp: ''
        source: (self class sourceCodeAt: #'externalAuthorName') asString).
    (MCClassDefinition
        name: #'Object'
        superclassName: #'ProtoObject'
        category: reference packageName
        instVarNames: #()
        comment: '').
    (MCMethodDefinition
        className: 'Object'
        classIsMeta: true
        selector: 'isExternal'
        category: '*external-core'
        timeStamp: ''
        source: (self class sourceCodeAt: #'isExternal') asString)}.
    externalRepository
        basicStoreVersion:
            (MCVersion new
                setPackage: (MetacelloTestsMCPackage new name: reference packageName)
                info:
                    (versionInfo := MCVersionInfo
                        name: reference name
                        id: UUID new
                        message: 'This is a mock version'
                        date: Date today
                        time: Time now
                        author: reference author
                        ancestors: #())
                snapshot: (MCSnapshot fromDefinitions: definitionArray)
                dependencies: #()).
    ^ versionInfo! !
