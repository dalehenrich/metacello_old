
!MetacelloConfigAPITestCase methodsFor: 'baselines'!
baseline115: spec 
	<version: '1.1.5-baseline' imports: #( '1.1.4-baseline' )>
	
	spec for: #common do: [
		spec 
			project: 'Example Project' with: [
				spec preLoadDoIt: #alternatePreloadForCore ]]! !
