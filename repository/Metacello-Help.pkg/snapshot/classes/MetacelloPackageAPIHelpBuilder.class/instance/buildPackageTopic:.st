
!MetacelloPackageAPIHelpBuilder methodsFor: 'building'!
buildPackageTopic: pTopic
 
	| classTopic classes |
	classes := (PackageInfo named: pTopic title) classes asSortedCollection: [:cl1 :cl2 | cl1 name < cl2 name].
	classes
	   do: [:aClass| 
		classTopic := MetacelloClassAPIHelpBuilder buildHierarchicalHelpTopicFrom: aClass withSubclasses: false withMethods: true.
		pTopic addSubtopic: classTopic
	]

! !
