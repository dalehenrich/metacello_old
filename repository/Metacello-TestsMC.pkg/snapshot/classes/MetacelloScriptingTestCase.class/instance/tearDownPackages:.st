
!MetacelloScriptingTestCase methodsFor: 'running'!
tearDownPackages: aGoferInstance
    (self hasPackage: 'External-Core')
        ifTrue: [ aGoferInstance package: 'External-Core' ].
    (self hasPackage: 'Sample-Core')
        ifTrue: [ aGoferInstance package: 'Sample-Core' ]! !
