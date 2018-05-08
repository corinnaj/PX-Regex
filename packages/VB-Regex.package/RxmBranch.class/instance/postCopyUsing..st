copying
postCopyUsing: anIdentityDictionary

	super postCopyUsing: anIdentityDictionary.
	alternative ifNotNil: [
		alternative := alternative copyUsing: anIdentityDictionary ]