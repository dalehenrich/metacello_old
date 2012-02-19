
!MetacelloGoferPackage methodsFor: 'private'!
matches: aLoadableReference
    "does Monticello-style #versionInfoFromVersionNamed: matching"

    | pFilename refName |
    ((pFilename := self packageFilename) == nil or: [ self name = self packageFilename ])
        ifTrue: [ ^ super matches: aLoadableReference ].
    refName := aLoadableReference packageName.
pFilename = refName ifTrue:  [^true ].
    (pFilename beginsWith: refName)
        ifFalse: [ ^ false ].
    ^ pFilename size > refName size and: [ (pFilename at: refName size + 1) = $- ]! !
