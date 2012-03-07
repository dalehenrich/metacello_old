
!MetacelloGenericProjectSpec methodsFor: 'merging'!
nonOverridable
    ^ super nonOverridable , #(#'projectPackage' #'repositories')! !
