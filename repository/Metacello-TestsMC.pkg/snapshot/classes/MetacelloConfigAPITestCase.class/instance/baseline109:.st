
!MetacelloConfigAPITestCase methodsFor: 'baselines'!
baseline109: spec 
	<version: '1.0.9-baseline'>
	
	spec for: #common do: [
		spec 
			package: 'Example-Core';
			package: 'Example-Tests' with: [ 
				spec includes: 'Example-Core' ]].
! !
