
!MetacelloInsideToolBoxTutorialTests class methodsFor: 'examples'!
example7
	"release version 1.1 on pharo only"

	"self example7"

	(MetacelloToolBox configurationNamed: 'Example')
		modifyVersionMethodForVersion: '1.1'
			versionSpecsDo: [ :attribute :versionSpec | 
					attribute == #pharo
						ifTrue: [ versionSpec blessing: #release ].
					true ];
		commitMethod;
		modifySymbolicVersionMethodFor: #development
			symbolicVersionSpecsDo: [ :symbolicVersionSpec | symbolicVersionSpec attribute ~~ #pharo ];
		commitMethod;
		modifySymbolicVersionMethodFor: #stable symbolicVersionSpecsDo: [ :symbolicVersionSpec | true ];
		addSymbolicSection: #pharo version: '1.1';
		commitMethod! !
