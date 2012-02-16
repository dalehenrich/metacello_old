
!MetacelloGitHubProject class methodsFor: 'scripting'!
projectFrom: aScriptingEngine unconditionalLoad: unconditionalLoad
    "just create project right here ... from the metacello.json file"

    | projectPath versionString |
    projectPath := aScriptingEngine repositoryDescription.
    projectPath := projectPath copyFrom: 'github://' size + 1 to: projectPath size.
    versionString := aScriptingEngine versionString.
    ^ self projectFrom: projectPath version: versionString! !
