
!MetacelloMCProjectSpec methodsFor: 'merging'!
nonOverridable
    ^ super nonOverridable , #(#'projectPackage' #'repositories')! !
