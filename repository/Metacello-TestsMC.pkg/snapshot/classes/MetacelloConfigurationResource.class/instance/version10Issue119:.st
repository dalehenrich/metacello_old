
!MetacelloConfigurationResource methodsFor: 'Issue 119'!
version10Issue119: spec
    <version: '1.0' imports: #('1.0-baseline')>
    spec
        for: #'common'
        do: [ 
            spec blessing: #'development'.
            spec project: 'Foo' with: '2.0'.
            spec package: 'GoferBar' with: 'GoferBar-jf.1' ]! !
