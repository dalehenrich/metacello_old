
!MetacelloConfigurationResource methodsFor: 'ConfigurationOfProjectFoe'!
setUpConfigurationOfProjectFoe
	"self reset"
	
	| reference className definitionArray |
	reference := GoferVersionReference name: 'MetacelloTestConfigurationOfProjectFoe-dkh.1'.
	className := reference packageName asSymbol.
	definitionArray := {
					"MCOrganizationDefinition categories: (Array with: className)."
					MCClassDefinition name: className superclassName: #Object category: className instVarNames: #() comment: ''.
					MCMethodDefinition 
						className: className asString
						classIsMeta: true
						selector: 'project'
						category: 'cat'
						timeStamp: ''
						source: self projectClassMethodSource.
					MCMethodDefinition 
						className: className asString
						selector: 'project'
						category: 'cat'
						timeStamp: ''
						source: self projectMethodSource.
					MCMethodDefinition 
						className: className asString
						selector: 'baseline40ProjectFoe:'
						category: 'cat'
						timeStamp: ''
						source: self baseline40MethodSourceProjectFoe.
				}.
	monticelloRepository basicStoreVersion: (MCVersion new
		setPackage:  (MetacelloTestsMCPackage new name: reference packageName)
		info: (MCVersionInfo
				name: reference name
				id: UUID new
				message: 'This is a mock version'
				date: Date today
				time: Time now
				author: reference author
				ancestors: #())
		snapshot: (MCSnapshot fromDefinitions: definitionArray)
		dependencies: #()) 
! !
