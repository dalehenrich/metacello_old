
!MetacelloAtomicMonticelloResource methodsFor: 'running'!
setUp
	super setUp.
	self
		setUpVersionReferences;
		setUpMonticelloRepository;
		setUpDependency;
		setUpNewerDependency! !
