
!MetacelloConfigurationResource methodsFor: 'Issue 119'!
baselineVersion40Issue119: spec
    <version: '4.0-baseline'>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'baseline'.
            spec repository: 'dictionary://Metacello_Gofer_Test_Repository'.
            spec
                project: 'Foo'
                    with: [ 
                            spec
                                versionString: #'bleedingEdge';
                                className: 'MetacelloTestConfigurationOfFoo';
                                repository: 'dictionary://Metacello_Configuration_Test_Repository' ];
                yourself.
            spec package: 'GoferBar' ]! !
