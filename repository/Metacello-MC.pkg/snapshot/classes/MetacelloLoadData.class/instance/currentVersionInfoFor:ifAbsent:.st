
!MetacelloLoadData methodsFor: 'versionInfo'!
currentVersionInfoFor: packageSpec ifAbsent: aBlock

	^self versionInfoMap 
		at: packageSpec file 
		ifAbsent: [ 
			self  packageNameMap 
				at: packageSpec name
				ifAbsent: aBlock ]! !
