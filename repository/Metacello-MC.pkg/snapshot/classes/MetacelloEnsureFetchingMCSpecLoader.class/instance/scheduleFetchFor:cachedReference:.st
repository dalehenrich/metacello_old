
!MetacelloEnsureFetchingMCSpecLoader methodsFor: 'private'!
scheduleFetchFor: packageSpec cachedReference: reference
	"reference already in the cache during fetch ...schedule a load directive for reference, so ensured load will come from cache"

	^ self
		scheduleFetchFor: packageSpec
		reference: reference
		message:
			'Fetched -> (cached) ' , reference name , ' --- ' , reference repository description , ' --- '
				, reference repository description! !
