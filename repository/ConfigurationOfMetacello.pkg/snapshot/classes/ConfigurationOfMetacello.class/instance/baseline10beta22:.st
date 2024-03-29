
!ConfigurationOfMetacello methodsFor: 'baselines'!
baseline10beta22: spec
	<version: '1.0-beta.22-baseline'>

	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://seaside.gemstone.com/ss/metacello'.
		spec
			project: 'Gofer Core' with: [
				spec
					className: 'ConfigurationOfGofer';
					versionString: '1.0-baseline';
					loads: #('Core' );
					file: 'ConfigurationOfGofer';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			project: 'Gofer Tests' copyFrom: 'Gofer Core' with: [
				spec loads: #('Tests' ) ];
			yourself.
		spec 
			package: 'Metacello-Core' with: [
				spec includes: #('Metacello-MC' 'Metacello-Platform' ). ];
			package: 'Metacello-MC' with: [
				spec requires: #('Metacello-Core' 'Gofer Core' ). ];
			package: 'Metacello-Platform' with: [
				spec requires: #('Metacello-MC' ). ];
			package: 'Metacello-Reference' with: [
				spec requires: #('Metacello-MC' ). ];
			package: 'Metacello-Tutorial' with: [
				spec requires: #('Metacello-Core' ). ];
			package: 'Metacello-TestsCore' with: [
				spec requires: #('Metacello-Core' ). ];
			package: 'Metacello-TestsMC' with: [
				spec requires: #('Metacello-MC' 'Gofer Tests' ). ];
			package: 'Metacello-TestsReference' with: [
				spec requires: #('Metacello-Reference' ). ];
			package: 'Metacello-TestsTutorial' with: [
				spec requires: #('Metacello-Tutorial' ). ];
			package: 'OB-Metacello' with: [
				spec requires: #('Metacello-Platform' 'Metacello-Core' ). ];
			yourself.

		spec 
			group: 'default' with: #('Metacello-Core' );
			group: 'Tutorial' with: #('Metacello-Tutorial' 'Metacello-Reference' );
			group: 'UI' with: #('OB-Metacello' );
			group: 'Tests' overrides: #('Metacello-TestsCore' 'Metacello-TestsTutorial' 'Metacello-TestsMC' 'Metacello-TestsReference' );
			yourself.].
	spec for: #squeakCommon do: [
		spec
			project: 'OB' with: [
				spec
					className: 'ConfigurationOfOmniBrowser';
					versionString: '1.1-baseline';
					loads: #('Core' );
					file: 'ConfigurationOfOmniBrowser';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			yourself.
		spec
			package: 'Metacello-TestsPlatform' with: [
				spec 
					requires: #('Metacello-Platform' );
					file: 'Metacello-TestsPlatform.squeakCommon'. ];
			package: 'OB-Metacello' with: [
				spec requires: #('OB' ). ];
			yourself.
		spec
			group: 'Tests' with: #('Metacello-TestsPlatform' );
			yourself.].
	spec for: #pharo do: [
		spec 
			project: 'ProfStef' with: [
				spec
					className: 'ConfigurationOfProfStef';
					versionString: '1.0-baseline';
					file: 'ConfigurationOfProfStef';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ];
			yourself.
		spec
			package: 'Metacello-ProfStef' with: [
				spec requires: #('Metacello-Core' 'ProfStef' ). ];
			package: 'Metacello-Platform' with: 'Metacello-Platform.pharo';
			yourself.
		spec
			group: 'Tutorial' with: #('Metacello-ProfStef');
			yourself.].
	spec for: #squeak do: [
		spec
			package: 'Metacello-Platform' with: 'Metacello-Platform.squeak';
			yourself.].
	spec for: #gemstone do: [
		spec
			project: 'Monticello' with: [
				spec
					className: 'ConfigurationOfGsMonticello';
					file: 'ConfigurationOfGsMonticello';
					repository: 'http://seaside.gemstone.com/ss/monticello' ];
			yourself.
		spec 
			package: 'Metacello-Platform' with: 'Metacello-Platform.gemstone';
			yourself. ].! !
