
!ConfigurationOfMetacello methodsFor: 'versions'!
version10beta8: spec
	<excludedValidationIssues: #('1.0-beta.8' #(noVersionSpecified))>
	<version: '1.0-beta.8' imports: #('1.0-beta.5-baseline' )>

	spec for: #common do: [
		spec blessing: #beta.
		spec description: '- protect senders of asNumber with error handler'.
		spec author: 'dkh'.
		spec timestamp: '10/20/2009 11:30'.
		spec 
			package: 'Gofer' with: 'Gofer-lr.70';
			package: 'Metacello-Core' with: 'Metacello-Core-dkh.277';
			package: 'Metacello-MC' with: 'Metacello-MC-dkh.210';
			package: 'Metacello-Reference' with: 'Metacello-Reference-dkh.15';
			package: 'Metacello-Tutorial' with: 'Metacello-Tutorial-dkh.15';
			package: 'OB-Metacello' with: 'OB-Metacello-dkh.27';
			package: 'Metacello-TestsReference' with: 'Metacello-TestsReference-dkh.2';
			package: 'Metacello-TestsCore' with: 'Metacello-TestsCore-dkh.1';
			package: 'Metacello-TestsMC' with: 'Metacello-TestsMC-dkh.7';
			package: 'Metacello-TestsTutorial' with: 'Metacello-TestsTutorial-dkh.3'.].
	spec for: #gemstone do: [
		spec package: 'Metacello-Platform' with: 'Metacello-Platform.gemstone-dkh.5'.].
	spec for: #pharo do: [
		spec package: 'Metacello-Platform' with: 'Metacello-Platform.pharo-dkh.7'.].
	spec for: #squeak do: [
		spec package: 'Metacello-Platform' with: 'Metacello-Platform.squeak-dkh.3'.].! !
