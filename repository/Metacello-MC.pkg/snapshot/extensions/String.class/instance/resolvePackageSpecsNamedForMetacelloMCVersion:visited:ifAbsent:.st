
!String methodsFor: '*metacello-mc'!
resolvePackageSpecsNamedForMetacelloMCVersion: aMetacelloMCVersion visited: visited ifAbsent: aBlock 

	^ aMetacelloMCVersion 
		allPackagesForSpecs:  {aMetacelloMCVersion spec packageNamed: self ifAbsent: aBlock}
		visited: visited! !
