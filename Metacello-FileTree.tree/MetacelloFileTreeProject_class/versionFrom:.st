
!MetacelloFileTreeProject class methodsFor: 'scripting'!
versionFrom: aScriptingEngine
    aScriptingEngine versionString ~~ nil
        ifTrue: [ self error: 'Version not needed for filetree:// projects' ].
    ^ (self projectFrom: aScriptingEngine) version: 'baseline'! !
