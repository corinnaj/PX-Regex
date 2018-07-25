A StreamInspector is used to keep a record of all accesses to the stream during matching of a specific string against a record. It parses relevant information from the invocation context to display them to the user.

Instance Variables
	matcher: RxmLinks that make up the matcher generated from the regex
	stream: ReadStream for string to be matched against regex
	record: OrderedCollection of all steps used during matching, which an icon, explanation and range matched