
!MetacelloGoferFunctionalTest methodsFor: 'running'!
doSilently

	^(#(#testCommitPackageSpec #testCommitPackageVersion #testPackagesNeedSaving #testIssue155) includes: testSelector asSymbol) not! !
