
!MetacelloProject methodsFor: 'private'!
sortedAndFilteredVersions

		^(self map values asArray sort: [:a :b | a >= b ]) select: [:vrsn | (#(broken baseline) includes: vrsn blessing) not ].
! !
