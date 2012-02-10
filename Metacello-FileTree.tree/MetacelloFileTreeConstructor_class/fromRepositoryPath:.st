
!MetacelloFileTreeConstructor class methodsFor: 'instance creation'!
fromRepositoryPath: filetreeRepositoryPath
    | project |
    (FileDirectory on: filetreeRepositoryPath)
        oldFileNamed: 'metacello.json'
        do: [ :fileStream | 
            fileStream lineEndConvention: #'lf'.
            project := self fromStream: fileStream.
            (project version: 'baseline') spec repository: 'filetree://' , filetreeRepositoryPath.
            ^ project ]! !
