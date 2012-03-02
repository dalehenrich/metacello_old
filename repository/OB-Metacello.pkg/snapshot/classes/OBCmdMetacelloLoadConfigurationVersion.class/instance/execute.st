
!OBCmdMetacelloLoadConfigurationVersion methodsFor: 'execution'!
execute

	MetacelloPlatform current transact: [ self executeLoadProject ]! !
