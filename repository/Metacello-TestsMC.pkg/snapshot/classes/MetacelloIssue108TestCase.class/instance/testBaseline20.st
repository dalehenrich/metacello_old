
!MetacelloIssue108TestCase methodsFor: 'tests'!
testBaseline20
	| wc project loader |
	project := self class new project.
	loader := project load: '2.0-baseline'.
	wc := (GoferVersionReference name: 'GoferBar.gemstone') workingCopy.
	self assert: (wc ancestry ancestors first name = 'GoferBar.gemstone-dkh.70').
! !
