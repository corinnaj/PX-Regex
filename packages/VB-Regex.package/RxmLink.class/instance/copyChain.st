copying
copyChain
	"Create a full copy of all the links in this chain, including branches, while letting them share and reuse non-link objects as much as possible."

	^self copyUsing: IdentityDictionary new