
!ConfigurationOfMetacello class methodsFor: 'development support'!
releaseDevelopmentVersion: commitMessage
	"Release #development version: set version blessing to #release, update the #development and #stable symbolic version methods and save the configuration."

	"self releaseDevelopmentVersion: '- release version 1.0-beta.28.3'"

	<apiDocumentation>
	self ensureMetacello.
	(Smalltalk at: #MetacelloToolBox) releaseDevelopmentVersionIn: self description: commitMessage! !
