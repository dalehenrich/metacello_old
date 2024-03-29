
!MetacelloMCVersionSpecTestCase methodsFor: 'tests'!
testMCVersionMergeSpec
    | versionA versionB version repository package group projectReferenceSpec |
    versionA := self versionSpec
        blessing: #'baseline';
        versionString: '1.0';
        repository: 'http://example.com/repository' username: 'dkh' password: 'password';
        repository: '/opt/gemstone/repository';
        yourself.
    versionA packages
        merge:
                (self packageSpec
                        name: 'Package';
                        requires: 'AnotherPackage';
                        yourself);
        merge:
                (self groupSpec
                        name: 'Platform';
                        includes: 'Core';
                        yourself);
        merge:
                (self projectReferenceSpec
                        name: 'Project';
                        projectReference:
                                (self projectSpec
                                        name: 'Project';
                                        projectPackage: self project packageSpec;
                                        className: 'ConfigurationOfProjectA';
                                        repository: 'http://example.com/repository'
                                            username: 'dkh'
                                            password: 'password';
                                        repository: '/opt/gemstone/repository';
                                        yourself));
        yourself.
    versionB := self versionSpec
        blessing: #'release';
        versionString: '1.1';
        repository: 'http://example.com/repository' username: 'DaleHenrichs' password: 'secret';
        repository: '/opt/gemstone/repo';
        yourself.
    versionB packages
        merge:
                (self packageSpec
                        name: 'Package';
                        requires: 'AndAnotherPackage';
                        yourself);
        merge:
                (self groupSpec
                        name: 'Platform';
                        includes: 'Tests';
                        yourself);
        merge:
                (self projectReferenceSpec
                        name: 'Project';
                        projectReference:
                                (self projectSpec
                                        name: 'Project';
                                        projectPackage: self project packageSpec;
                                        className: 'ConfigurationOfProjectA';
                                        repository: 'http://example.com/repository'
                                            username: 'DaleHenrichs'
                                            password: 'secret';
                                        repository: '/opt/gemstone/repo';
                                        yourself));
        yourself.
    version := versionA mergeSpec: versionB.
    self assert: version blessing value = #'release'.
    self assert: version versionString value = '1.1'.
    repository := version repositories map at: '/opt/gemstone/repository' ifAbsent: [ self assert: false ].
    self assert: repository type = 'directory'.
    repository := version repositories map at: '/opt/gemstone/repo' ifAbsent: [ self assert: false ].
    self assert: repository type = 'directory'.
    repository := version repositories map at: 'http://example.com/repository' ifAbsent: [ self assert: false ].
    self assert: repository type = 'http'.
    self assert: repository username = 'DaleHenrichs'.
    self assert: repository password = 'secret'.
    package := version packages packageNamed: 'Package' ifAbsent: [ self assert: false ].
    self assert: package name = 'Package'.
    projectReferenceSpec := version packages packageNamed: 'Project' ifAbsent: [ self assert: false ].
    self assert: projectReferenceSpec projectName = 'Project'.
    repository := projectReferenceSpec repositories map at: '/opt/gemstone/repository' ifAbsent: [ self assert: false ].
    self assert: repository type = 'directory'.
    repository := projectReferenceSpec repositories map at: '/opt/gemstone/repo' ifAbsent: [ self assert: false ].
    self assert: repository type = 'directory'.
    repository := projectReferenceSpec repositories map
        at: 'http://example.com/repository'
        ifAbsent: [ self assert: false ].
    self assert: repository type = 'http'.
    self assert: repository username = 'DaleHenrichs'.
    self assert: repository password = 'secret'.
    group := version packages packageNamed: 'Platform' ifAbsent: [ self assert: false ].
    self assert: (group includes includes: 'Core').
    self assert: (group includes includes: 'Tests')! !
