
!MetacelloScriptingResource methodsFor: 'sample repository'!
setUpSampleCore
    "self reset"

    | reference className definitionArray versionInfo |
    reference := GoferVersionReference name: 'Sample-Core-dkh.1'.
    className := #'SampleCore'.
    definitionArray := {(MCClassDefinition
        name: className
        superclassName: #'Object'
        category: reference packageName
        instVarNames: #()
        comment: '').
    (MCMethodDefinition
        className: className asString
        classIsMeta: true
        selector: 'sampleAuthorName'
        category: 'cat'
        timeStamp: ''
        source: (self class sourceCodeAt: #'sampleAuthorName') asString).
    (MCClassDefinition
        name: #'Object'
        superclassName: #'ProtoObject'
        category: reference packageName
        instVarNames: #()
        comment: '').
    (MCMethodDefinition
        className: 'Object'
        classIsMeta: true
        selector: 'isSample'
        category: '*sample-core'
        timeStamp: ''
        source: (self class sourceCodeAt: #'isSample') asString)}.
    sampleRepository
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
