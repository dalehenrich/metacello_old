
!MetacelloConfigAPITestCase methodsFor: 'baselines'!
baseline113: spec 
	<version: '1.1.3-baseline'>
	
	spec for: #outer do: [
		spec 
			package: 'Example-Core';
			package: 'Example-Test';
			yourself].
! !
