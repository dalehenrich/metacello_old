
!MetacelloGoferBasedLoaderTest methodsFor: 'tests'!
testNestedLoad3

	| project version loader wc configurationName |
	configurationName := 'MetacelloTestConfigurationOfProjectToolBox'.
	gofer repository: self configurationRepository.
	gofer package: configurationName.
	gofer load.
	MetacelloConfigurationResource projectAttributes: #(#'level1_1' #'level2_2' #'level2_1' #'level3_2' ).
	project := (Smalltalk at: configurationName asSymbol) project.
	version := project version: '1.3.2-baseline'.
	loader := version load.
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.55').
! !
