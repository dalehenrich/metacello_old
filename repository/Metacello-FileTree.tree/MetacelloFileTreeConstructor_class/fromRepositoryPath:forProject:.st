
!MetacelloFileTreeConstructor class methodsFor: 'instance creation'!
fromRepositoryPath: filetreeRepositoryPath forProject: projectName
    | project |
    (FileDirectory on: filetreeRepositoryPath , FileDirectory slash , 'metacello' , FileDirectory slash , projectName)
        oldFileNamed: 'metacello.json'
        do: [ :fileStream | 
            fileStream lineEndConvention: #'lf'.
            project := self fromStream: fileStream.
            (project version: 'baseline') spec repository: 'filetree://' , filetreeRepositoryPath.
            ^ project ]! !
