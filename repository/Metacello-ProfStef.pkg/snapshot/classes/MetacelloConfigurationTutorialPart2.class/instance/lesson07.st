
!MetacelloConfigurationTutorialPart2 methodsFor: 'lessons'!
lesson07
	^Lesson
		title: 'Lesson 7'
		lesson: 
'
ToolSet browse: MetacelloProjectRefTutorialConfig selector: #baseline07:.
ToolSet browse: MetacelloProjectRefTutorialConfig selector: #version07:.

"NOTE: you should run through the lessons in Part 1 first.

In this configuration we are defining a project that utilizes the packages from the 
Example project (MetacelloTutorialConfig):  ''Example-Core'', ''Example-AddOn'', 
''Example-Tests'' and 2 packages specific to the project: ''Project-Core'' and 
''Project-Tests'':"

  (MetacelloProjectRefTutorialConfig project version: ''0.7'') load.


ProfStef next.
'! !
