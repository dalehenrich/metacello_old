
!MetacelloLoaderPolicy methodsFor: 'accessing'!
loadData

 	loadData == nil ifTrue: [ loadData := MetacelloLoadData new ].
	^loadData
! !
