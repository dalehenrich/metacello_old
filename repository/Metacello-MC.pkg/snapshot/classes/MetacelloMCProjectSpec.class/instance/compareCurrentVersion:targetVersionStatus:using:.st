
!MetacelloMCProjectSpec methodsFor: 'testing'!
compareCurrentVersion: anOperator targetVersionStatus: targetVersionStatus using: anMCLoader

	| cv vrsn prjct |
	(vrsn := self versionOrNil) == nil ifTrue: [ ^false ].
	prjct := self projectClassProject.
	prjct loader: anMCLoader.
	(cv := prjct currentVersion) == nil ifTrue: [ ^false ].
	(targetVersionStatus includes: cv versionStatus)
		ifTrue: [ ^cv perform: anOperator with: vrsn ].
	^false
	
 ! !
