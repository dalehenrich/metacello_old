
!Metacello methodsFor: 'project pin api'!
pin: projectName filetree: directoryPath
    self
        addStatement: #'pin:version:'
        args:
            {projectName.
            ('filetree://' , directoryPath)}! !
