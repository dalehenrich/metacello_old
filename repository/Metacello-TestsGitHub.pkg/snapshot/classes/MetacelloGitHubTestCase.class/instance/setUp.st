
!MetacelloGitHubTestCase methodsFor: 'running'!
setUp
    super setUp.
    loadedProjectsCache := MetacelloScriptEngine loadedProjects.
    MetacelloScriptEngine resetLoadedProjects! !
