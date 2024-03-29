
!MetacelloMCVersionSpec methodsFor: 'printing'!
configMethodOn: aStream last: last indent: indent
	| spec hasRepositories hasPackageSpecs |
	hasRepositories := (spec := self repositoriesSpec) ~~ nil and: [ spec list isEmpty not ].
	hasPackageSpecs := false.
	self packagesSpec list
		do: [ :member | 
			member spec
				projectDo: [ :proj | 
					member spec name ~~ nil
						ifTrue: [ hasPackageSpecs := true ] ]
				packageDo: [ :package | 
					member spec name ~~ nil
						ifTrue: [ hasPackageSpecs := true ] ]
				groupDo: [ :group | 
					member spec name ~~ nil
						ifTrue: [ hasPackageSpecs := true ] ] ].
	super configMethodOn: aStream last: (hasRepositories | hasPackageSpecs) not indent: indent.
	hasRepositories
		ifTrue: [ 
			spec map values size = 1
				ifTrue: [ 
					aStream
						tab: indent;
						nextPutAll: 'spec repository: ';
						nextPutAll: spec map values first description printString , '.'.
					hasPackageSpecs ifTrue: [ aStream cr ]]
				ifFalse: [ 
					self
						configMethodOn: aStream
						for: spec
						selector: 'repositories:'
						last: hasPackageSpecs not 
						indent: indent ] ].
	self configPackagesSpecMethodOn: aStream indent: indent.
	last
		ifFalse: [ aStream cr ]! !
