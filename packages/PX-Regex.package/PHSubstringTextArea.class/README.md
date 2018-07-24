A PHSubstringTextArea can be used to highlight all matches of a regex in a longer text.

Instance Variables
	subexpressions: An OrderedCollection of ranges where a match for the regex was found.
	tool: The PHSubstringTextArea only works with a tool, which should implement the function 'regex'. This is used to find out for which regex subexpressions should be found.