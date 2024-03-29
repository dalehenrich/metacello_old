
!MetacelloAtomicLoadOrderTest methodsFor: 'tests'!
testBaseline30LoadAtomic

	| project version wc |
	project := self project.
	version := project version: '3.0-baseline'.
	version load.
	wc := (GoferPackageReference name: 'GoferFar') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFar-dkh.4').
	wc := (GoferPackageReference name: 'GoferFoo') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferFoo-dkh.4').
	wc := (GoferPackageReference name: 'GoferBeau') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBeau-dkh.15').
	wc := (GoferPackageReference name: 'GoferBar') workingCopy.
	self assert: wc ancestry ancestors first name = 'GoferBar-dkh.1'! !
