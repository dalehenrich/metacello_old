
!MetacelloMCProjectSpec methodsFor: '*metacello-filetree'!
jsonBodyOn: aStream indent: indent
    "no cr at end"

    self
        jsonOn: aStream
        for: self versionString
        selector: 'version'
        indent: indent + 1.
    self
        jsonOn: aStream
        list: self loads
        selector: 'load'
        indent: indent + 1.
    self
        jsonOn: aStream
        for: self getPreLoadDoIt
        selector: 'preLoadDoIt'
        indent: indent + 1.
    self
        jsonOn: aStream
        for: self getPostLoadDoIt
        selector: 'postLoadDoIt'
        indent: indent + 1.
    self projectPackage repositories jsonOn: aStream indent: indent + 1! !
