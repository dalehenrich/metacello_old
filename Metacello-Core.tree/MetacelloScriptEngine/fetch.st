
!MetacelloScriptEngine methodsFor: 'actions api'!
fetch
    self root: (self projectClass versionFrom: self) fetch! !
