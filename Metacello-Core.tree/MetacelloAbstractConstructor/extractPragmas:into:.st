
!MetacelloAbstractConstructor methodsFor: 'private'!
extractPragmas: pragmaKeyword into: versionDict

	^self extractPragmas: pragmaKeyword for: self configurationClass into: versionDict
! !
