
!MetacelloDirective class methodsFor: 'instance creation'!
preLoadSpec: packageOrVersionSpec loader: aLoader

	^MetacelloPreLoadDirective new
		spec: packageOrVersionSpec loader: aLoader! !
