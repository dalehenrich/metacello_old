
!MetacelloConfigAPITestCase methodsFor: 'baselines'!
baseline103: spec 
	<version: '1.0.3-baseline' imports: #( '1.0.2-baseline' )>
	
	spec for: #common do: [
		spec 
			preLoadDoIt: #alternatePreloadForCore ]! !
