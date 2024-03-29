
!MetacelloMonticelloResource methodsFor: 'running'!
setUpVersionReferences
	"self reset"

	versionReferences := OrderedCollection new.
	versionReferences
		add: (GoferVersionReference name: 'GoferBar.branch-lr.1');
		add: (GoferVersionReference name: 'GoferBar.branch-lr.2');
		add: (GoferVersionReference name: 'GoferBar-lr.0');
		add: (GoferVersionReference name: 'GoferBar-jf.1');
		add: (GoferVersionReference name: 'GoferBar-lr.1');
		add: (GoferVersionReference name: 'GoferFoo-lr.1');
		add: (GoferVersionReference name: 'GoferFoo-lr.2');
		add: (GoferVersionReference name: 'GoferFoo-lr.4');
		add: (GoferVersionReference name: 'GoferBeau-dkh.15');
		add: (GoferVersionReference name: 'GoferBeau-dkh.25');
		add: (GoferVersionReference name: 'GoferBeau-dkh.53');
		add: (GoferVersionReference name: 'GoferBeau-dkh.54');
		add: (GoferVersionReference name: 'GoferBeau-dkh.55');
		add: (GoferVersionReference name: 'GoferBeau-dkh.56');
		add: (GoferVersionReference name: 'GoferFaux-tg.30');
		add: (GoferVersionReference name: 'GoferFaux-tg.31');
		add: (GoferVersionReference name: 'GoferFaux-tg.32');
		add: (GoferVersionReference name: 'GoferFaux-tg.33');
		add: (GoferVersionReference name: 'GoferFaux-tg.34');
		add: (GoferVersionReference name: 'GoferFaux-tg.35');
		add: (GoferVersionReference name: 'GeauxBar.branch-lr.2');
		add: (GoferVersionReference name: 'GeauxFoo-lr.1');
		add: (GoferVersionReference name: 'GeauxFaux-tg.32');
		add: (GoferVersionReference name: 'GeauxBeau-dkh.55');
		add: (GoferVersionReference name: 'GeauxBeau-dkh.56');
		add: (GoferVersionReference name: 'ConfigurationOfNautilusWithoutPackages-dkh.55');
		add: (GoferVersionReference name: 'ConfigurationOfNautilusWithoutPackages-dkh.56');
		add: (GoferVersionReference name: 'ConfigurationOfNautilusWithoutPackages-dkh.57');
		add: (GoferVersionReference name: 'ConfigurationOfNautilus-dkh.56');
		add: (GoferVersionReference name: 'ConfigurationOfGlamourSeaside-dkh.55');
		add: (GoferVersionReference name: 'ConfigurationOfGlamourSeaside-dkh.56');
		add: (GoferVersionReference name: 'ConfigurationOfGlamourSeaside-dkh.57');
		add: (GoferVersionReference name: 'ConfigurationOfGlamour-dkh.56');
		yourself! !
