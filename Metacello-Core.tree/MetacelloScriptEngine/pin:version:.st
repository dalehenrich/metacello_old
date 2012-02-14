
!MetacelloScriptEngine methodsFor: 'project pin api'!
pin: aProjectName version: aVersionString
    self pinnedProjects at: aProjectName put: aVersionString! !
