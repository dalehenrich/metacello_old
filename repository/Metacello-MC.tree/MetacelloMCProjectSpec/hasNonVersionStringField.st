
!MetacelloMCProjectSpec methodsFor: 'testing'!
hasNonVersionStringField
    | hasVersionString hasOperator hasProjectPackage hasLoads hasClassName hasPreLoadDoIt hasPostLoadDoIt |
    hasClassName := className ~~ nil and: [ className ~= self constructClassName ].
    hasVersionString := self versionString ~~ nil.
    hasOperator := operator ~~ nil.
    hasProjectPackage := self projectPackage ~~ nil
        and: [ self projectPackage name ~~ nil or: [ self projectPackage packageRepository ~~ nil ] ].
    hasLoads := self loads ~~ nil.
    hasPreLoadDoIt := self getPreLoadDoIt ~~ nil.
    hasPostLoadDoIt := self getPostLoadDoIt ~~ nil.
    ^ hasClassName | hasOperator | hasProjectPackage | hasLoads | hasPreLoadDoIt | hasPostLoadDoIt! !
