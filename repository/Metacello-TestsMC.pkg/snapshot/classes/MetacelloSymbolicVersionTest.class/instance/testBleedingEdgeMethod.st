
!MetacelloSymbolicVersionTest methodsFor: 'tests stable'!
testBleedingEdgeMethod

	| project version |
	project := self projectWith: #(#'platformVersion1.x').
	self assert: (project version: #bleedingEdge) = project bleedingEdge.
! !
