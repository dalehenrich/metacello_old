
!MetacelloConfigurationResource methodsFor: 'ConfigurationOfFoo'!
postloadDoIt
	"self reset"

	Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result' put: true! !
