
!MetacelloRepositoriesSpec methodsFor: '*metacello-filetree'!
jsonOn: aStream indent: indent
    "no cr at end"

    self list
        do: [ :member | 
            aStream
                nextPut: $,;
                cr;
                tab: indent;
                nextPutAll: '"repository" : "';
                nextPutAll: member spec name;
                nextPutAll: '"' ]! !
