
!MetacelloToolBox methodsFor: 'api-configuration'!
modifySymbolicVersionMethodFor: versionSymbol symbolicVersionSpecsDo: aBlock
	| constructor coll pragma |
	constructor := self constructor.
	coll := constructor extractSymbolicVersionPragmas at: versionSymbol ifAbsent: [ ^ nil ].
	coll size > 1
		ifTrue: [ self error: 'More than one pragma defining ' , versionSymbol printString ].
	pragma := coll at: 1.
	methodSpec := (MetacelloSymbolicVersionMethodSpec new)
		project: project;
		selector: pragma selector;
		category: (project configuration class whichCategoryIncludesSelector: pragma selector);
		versionString: versionSymbol;
		yourself.
	(constructor extractSymbolicVersionSpecsFor: versionSymbol)
		do: [ :symbolicVersionSpec | 
			(aBlock value: symbolicVersionSpec)
				ifTrue: [ self methodSpec addMethodSection: symbolicVersionSpec attribute versionString: symbolicVersionSpec versionString ] ]! !
