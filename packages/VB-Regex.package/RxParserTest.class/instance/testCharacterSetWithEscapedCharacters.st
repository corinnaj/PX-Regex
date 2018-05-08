tests
testCharacterSetWithEscapedCharacters
	"self debug: #testCharacterSetRange"
	
	{
		'[\r]'. String cr. String space.
		'[\n]'. String lf. String space.
		'[\t]'. String tab. String space.
		'[\e]'. Character escape asString. String space.
		'[\f]'. Character newPage asString. String space.
		'[\]]+'. ']]]'. '[[['.
		'[\S]+[\s]+=[\s]+#[^\[(]'. 'foo = #bar'. 'foo = #[1 2 3]'.
		'[\d]+'. '123'. 'abc'.
		'[\D]+'. 'abc'. '123'.
		'[\w]+'. 'a1_b2'. '...'.
		'[\W]+'. '...'. 'a1_b2'.
	} groupsDo: [ :regexString :inputToAccept :inputToReject |
		| regex |
		regex := regexString asRegex.
		self
			assert: (regex search: inputToAccept);
			deny: (regex search: inputToReject) ]