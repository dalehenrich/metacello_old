
!Metacello methodsFor: 'project pin api'!
pin: projectName version: versionString
    self
        addStatement: #'pin:version:'
        args:
            {projectName.
            versionString}! !
