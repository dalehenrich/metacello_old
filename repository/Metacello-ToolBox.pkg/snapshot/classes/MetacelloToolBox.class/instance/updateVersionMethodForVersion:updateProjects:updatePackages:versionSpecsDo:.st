
!MetacelloToolBox methodsFor: 'api-configuration'!
updateVersionMethodForVersion: inputVersionStringOrSymbol updateProjects: updateProjects updatePackages: updatePackages versionSpecsDo: aBlock
	| constructor updatedSpecs projectAttributes fullVersionSpec version coll pragma imports blessing reversed sections addedSections visitedSpecs sourceVersionString keptSections |
	updatedSpecs := Set new.
	projectAttributes := project attributes.
	version := project version: inputVersionStringOrSymbol.
	sourceVersionString := version versionString.	"resolve symbolic version"
	blessing := version blessing.
	blessing == #release
		ifTrue: [ 
			MetacelloCannotUpdateReleasedVersionError
				signal: 'Should not update a version that has been released (resume to continue update).' ].
	fullVersionSpec := version spec.
	constructor := self constructor.
	coll := constructor extractAllVersionPragmas at: sourceVersionString ifAbsent: [ ^ updatedSpecs ].
	coll size > 1
		ifTrue: [ self error: 'More than one pragma defining ' , sourceVersionString printString ].
	pragma := coll at: 1.
	imports := pragma numArgs = 2
		ifTrue: [ pragma argumentAt: 2 ]
		ifFalse: [ #() ].
	methodSpec := (MetacelloVersionMethodSpec new)
		project: project;
		selector: pragma selector;
		category: (project configuration class whichCategoryIncludesSelector: pragma selector);
		versionString: sourceVersionString;
		imports: imports;
		yourself.
	constructor extractMethodSectionsFor: sourceVersionString.
	sections := OrderedCollection new.
	constructor methodSectionsInEvaluationOrder: projectAttributes do: [ :methodSection | sections add: methodSection ].
	addedSections := Dictionary new.
	visitedSpecs := Set new.
	keptSections := IdentitySet new.
	sections reverse
		do: [ :methodSection | 
			| versionSpec |
			versionSpec := methodSection versionSpec.
			(blessing ~~ #baseline and: [ projectAttributes includes: methodSection attribute ])
				ifTrue: [ 
					self
						updateVersionSpec: versionSpec
						fullVersionSpec: fullVersionSpec
						updateProjects: updateProjects
						updatePackages: updatePackages
						visited: visitedSpecs
						updated: updatedSpecs ].
			(aBlock value: methodSection attributeOrPath value: versionSpec)
				ifTrue: [ keptSections add: methodSection topParent ] ].
	constructor methodSections
		do: [ :methodSection | 
			(projectAttributes includes: methodSection attribute)
				ifTrue: [ 
					(keptSections includes: methodSection)
						ifTrue: [ self methodSpec methodSections add: methodSection ] ]
				ifFalse: [ self methodSpec methodSections add: methodSection ] ].
	^ updatedSpecs! !
