
!MetacelloConfigAPITestCase methodsFor: 'baselines'!
baseline104: spec 
	<version: '1.0.4-baseline' imports: #( '1.0.2-baseline' )>
	
	spec for: #common do: [
		spec 
			preLoadDoIt: nil ]! !
