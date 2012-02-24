
!MetacelloDirective class methodsFor: 'instance creation'!
postLoadSpec: packageOrVersionSpec loader: aLoader

	^MetacelloPostLoadDirective new
		spec: packageOrVersionSpec loader: aLoader! !
