
!MetacelloGitHubProject class methodsFor: 'scripting'!
projectFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    "just create project right here ... from the metacello.json file"

    | directory projectPath url versionString zipFileBytes repository |
    projectPath := aScriptingEngine repositoryDescription.
    projectPath := projectPath copyFrom: 'github://' size + 1 to: projectPath size.
    versionString := aScriptingEngine versionString.
    directory := self cacheDirectoryFor: projectPath , '/' , versionString.
    repository := MCFileTreeRepository new
        directory: directory;
        readonly: true;
        yourself.
    (unconditionalLoad or: [ (MCRepositoryGroup default includes: repository) not ])
        ifTrue: [ 
            url := 'http://github.com/' , projectPath , '/zipball/' , versionString.
            zipFileBytes := ZnHttpClient new
                url: url;
                get.
            zipFileBytes isString
                ifTrue: [ ^ self error: 'Failure accessing: ' , url printString , ': ' , zipFileBytes ].
            ZipArchive new
                readFrom: (RWBinaryOrTextStream on: zipFileBytes);
                extractAllTo: directory.
            MCRepositoryGroup default addRepository: repository ].
    ^ MetacelloToolBox metacelloJsonFrom: directory pathName! !
