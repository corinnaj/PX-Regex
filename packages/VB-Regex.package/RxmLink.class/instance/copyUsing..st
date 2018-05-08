copying
copyUsing: anIdentityDictionary
	"Copy the receiver if it's not present in the argument dictionary, or just return the previously made copy. The rest of the object graph will be copied by #postCopyUsing:."

	^anIdentityDictionary 
		at: self
		ifAbsent: [
			"It may be tempting to use #at:ifAbsentPut: instead, but the argument block must not modify the receiver, so that wouldn't work."
			anIdentityDictionary
				at: self
				put: (self shallowCopy
					postCopyUsing: anIdentityDictionary;
					yourself) ]