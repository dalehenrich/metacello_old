
!MetacelloGoferBasedLoaderTest methodsFor: 'tests'!
testVersionRecord

	| project version loader names |
	project := self project.
	version := project version: '1.0'.
	loader := version record.
	names := #('GoferFoo' 'GoferBar' ) asOrderedCollection.
	loader loadDirective packageDirectivesDo: [:pkgDirective | | name |
		name := pkgDirective packageName.
		self assert: (names indexOf: name) = 1.
		names remove: name ifAbsent: [ self assert: false ]].
! !
