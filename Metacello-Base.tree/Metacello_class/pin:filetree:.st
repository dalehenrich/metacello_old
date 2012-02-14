
!Metacello class methodsFor: 'project pin api'!
pin: projectName filetree: directoryPath
    self scriptEngineClass pin: projectName version: 'filetree://' , directoryPath! !
