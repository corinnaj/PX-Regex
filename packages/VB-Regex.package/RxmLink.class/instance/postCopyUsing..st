copying
postCopyUsing: anIdentityDictionary
	"Copy the rest of the chain the same way as it's done in #copyUsing:."

	next ifNotNil: [
		next := next copyUsing: anIdentityDictionary ]