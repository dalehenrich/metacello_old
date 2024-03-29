
!MetacelloCurrentVersionTest methodsFor: 'test projects only'!
testFoe40Loaded

	| version cv fum projectFie projectFee projectFoe foo feaux |
	gofer
		package: 'MetacelloTestConfigurationOfFum'; 
		package: 'MetacelloTestConfigurationOfFoo'; 
		package: 'MetacelloTestConfigurationOfFeaux'; 
		package: 'MetacelloTestConfigurationOfProjectFie'; 
		package: 'MetacelloTestConfigurationOfProjectFee'; 
		package: 'MetacelloTestConfigurationOfProjectFoe'; 
		load.
	fum := (Smalltalk at: #MetacelloTestConfigurationOfFum) new project.
	foo := (Smalltalk at: #MetacelloTestConfigurationOfFoo) new project.
	feaux := (Smalltalk at: #MetacelloTestConfigurationOfFeaux) new project.
	projectFie := (Smalltalk at: #MetacelloTestConfigurationOfProjectFie) new project.
	projectFee := (Smalltalk at: #MetacelloTestConfigurationOfProjectFee) new project.
	projectFoe := (Smalltalk at: #MetacelloTestConfigurationOfProjectFoe) new project.

	version := projectFoe version: '4.0'.
	version load: #('Foo').

	self assertProject: foo expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: feaux expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFie expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.
	self assertProject: projectFee expectedVersionString: nil expectedFidelity: nil.
	self assertProject: projectFoe expectedVersionString: '4.0' expectedFidelity: #allLoadedToSpec.
	self assertProject: fum expectedVersionString: '4.0' expectedFidelity: #loadedToSpec.

! !
