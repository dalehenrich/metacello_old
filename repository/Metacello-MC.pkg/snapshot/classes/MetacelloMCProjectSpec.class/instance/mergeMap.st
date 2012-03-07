
!MetacelloMCProjectSpec methodsFor: 'merging'!
mergeMap
    | map |
    map := super mergeMap.
    map at: #'projectPackage' put: projectPackage.
    map at: #'repositories' put: repositories.
    ^ map! !
