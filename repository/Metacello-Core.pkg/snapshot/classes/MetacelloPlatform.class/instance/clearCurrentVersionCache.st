
!MetacelloPlatform methodsFor: 'caching'!
clearCurrentVersionCache
	MetacelloClearStackCacheNotification signal: #(#currentVersion #currentVersionAgainst: #currentVersionInfo)! !
