
!MetacelloGoferBasedLoaderTest methodsFor: 'versions'!
version62: spec
	<version: '6.2'>
	
	spec for: #common do: [
		spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
		spec 
			package: 'GoferFoo' with: 'GoferFoo-lr.4';
			package: 'GoferBar' with: 'GoferBar-lr.1';
			package: 'GoferFaux' with: 'GoferFaux-tg.35';
			yourself. ].
! !
