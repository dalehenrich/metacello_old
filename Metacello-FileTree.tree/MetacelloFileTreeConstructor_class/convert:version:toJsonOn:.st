
!MetacelloFileTreeConstructor class methodsFor: 'utility'!
convert: project version: inputVersionStringOrSymbol toJsonOn: aStream
    | version sourceVersionString constructor first |
    version := project version: inputVersionStringOrSymbol.
    sourceVersionString := version versionString.	"resolve symbolic version"
    constructor := MetacelloToolBoxConstructor new
        configuration: project configuration class new;
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
