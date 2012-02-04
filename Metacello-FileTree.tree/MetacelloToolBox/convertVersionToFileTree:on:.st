
!MetacelloToolBox methodsFor: '*metacello-filetree'!
convertVersionToFileTree: inputVersionStringOrSymbol on: aStream
    | version sourceVersionString constructor coll updatedSpecs pragma imports sections first |
    version := project version: inputVersionStringOrSymbol.
    sourceVersionString := version versionString.	"resolve symbolic version"
    constructor := self constructor.
    coll := constructor extractAllVersionPragmas
        at: sourceVersionString
        ifAbsent: [ ^ self error: 'no version found: ' , inputVersionStringOrSymbol printString ].
    coll size > 1
        ifTrue: [ ^ self error: 'More than one pragma defining ' , sourceVersionString printString ].
    pragma := coll at: 1.
    imports := pragma numArgs = 2
        ifTrue: [ pragma argumentAt: 2 ]
        ifFalse: [ #() ].
    methodSpec := MetacelloVersionMethodSpec new
        project: project;
        selector: pragma selector;
        category: (project configuration class whichCategoryIncludesSelector: pragma selector);
        versionString: sourceVersionString;
        imports: imports;
        yourself.
    aStream
        nextPut: $[;
        cr;
        tab;
        nextPutAll: '{"baseline" : ['.
    constructor extractMethodSectionsFor: sourceVersionString.
    first := true.
    constructor methodSections
        do: [ :methodSection | 
            first
                ifFalse: [ aStream nextPut: $, ].
            methodSection jsonOn: aStream indent: 1.
            first := false ].
    aStream
        cr;
        tab;
        nextPutAll: ']}';
        cr;
        nextPut: $]! !
