
!MetacelloConfigAPITestCase methodsFor: 'baselines'!
baseline119: spec 
	<version: '1.1.9-baseline' imports: #( '1.1.4-baseline' )>
	
	spec for: #common do: [
		spec 
			project: 'Example Project' overrides: [
				spec
					className: 'MetacelloExampleProjectConfig';
					versionString: '1.0-baseline';
					preLoadDoIt: #alternatePreloadForCore;
					yourself.]]! !
