
!MetacelloFileTreeProject class methodsFor: 'scripting'!
projectFrom: aScriptingEngine unconditionalLoad: aBool
    "just create project right here ... from the metacello.json file"

    | repository directory |
    repository := aScriptingEngine repository.
    directory := repository directory.
    ^ MetacelloFileTreeConstructor fromRepositoryPath: directory pathName! !
