
!MetacelloVersion methodsFor: 'querying'!
versionKey
	"version printString, without the versionStatus decorations, suitable for using as a unique key for the 
	 receiver in a dictionary"

	^ String streamContents: [:aStream| |label|
		self versionNumber printOn: aStream.
		self spec ~~ nil
			ifTrue: [(label := self spec projectLabel) isEmpty
					ifFalse: [aStream nextPutAll: ' [' , label , ']']] ]! !
