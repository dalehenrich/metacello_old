
!MetacelloConfigAPITestCase methodsFor: 'baselines'!
baseline118: spec 
	<version: '1.1.8-baseline' imports: #( '1.0-baseline' ) >
	
	spec for: #common do: [
		spec 
			package: 'Example-Core' with: [ 
				spec 
					preLoadDoIt: #alternatePreloadForCore ]].
! !
