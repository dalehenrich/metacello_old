
!MetacelloSymbolicVersionTest methodsFor: 'tests stable'!
testStableVersion10x

	| project version wc |
	MetacelloConfigurationResource projectAttributes: #(#'platformVersion1.x' #'platformVersion1.0.x' ).
	project := self project.
	version := project version: '2.0'.
	version load.
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.25').
	wc := (GoferPackageReference name: 'GoferFaux') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferFaux-tg.31'! !
