Class {
	#name : #Quotes,
	#superclass : #Object,
	#instVars : [
		'quotes'
	],
	#category : #QuotesProg
}

{ #category : #'as yet unclassified' }
Quotes class >> getFileNames: dir [
	"get list of filenames in directory"

	|files|
	files := dir asFileReference children.
	files := files select: [ :f | f isFile].
	files := files collect: [ :f | 
		|filename title|
		filename := f asString copyWithRegex: 'File @ ' matchesReplacedWith: ''.
		title := filename copyWithRegex: '.*/' matchesReplacedWith: ''.
		title := title copyWithRegex: '.txt$' matchesReplacedWith: ''.
		title := title copyWithRegex: '_' matchesReplacedWith: ' '.
		Dictionary newFrom: { #filename -> filename. #title -> title. } ].
	^ files.
]

{ #category : #'as yet unclassified' }
Quotes class >> makeTitle: myString [
	"converts a filename into something pretty."
	"Example: 'good_shakespeare_quotes.txt' => 'good shakespeare quotes'"

	|changedString|
	changedString := myString copyWithRegex: '.txt$' matchesReplacedWith: ''. 
	changedString := changedString copyWithRegex: '_' matchesReplacedWith: ' '.
	^ 'myString'.
]

{ #category : #'as yet unclassified' }
Quotes class >> prettifyFilename: myString [
	"converts a filename into something pretty."
	"Example: 'good_shakespeare_quotes.txt' => 'good shakespeare quotes'"

	|changedString|
	changedString := myString copyWithRegex: '.txt$' matchesReplacedWith: ''. 
	changedString := changedString copyWithRegex: '.org$' matchesReplacedWith: ''. 
	changedString := changedString copyWithRegex: '_' matchesReplacedWith: ' '.
	^ changedString asLowercase.
]

{ #category : #general }
Quotes >> getRandomQuote [
	"returns a random quote from the [quotes] collection"

	^ quotes shuffled first

]

{ #category : #general }
Quotes >> importFile: filename [
	|contents stream working_dir|
	working_dir := FileSystem disk workingDirectory.
	stream := (working_dir / filename) readStream.
	contents := stream contents.
	^ contents

]

{ #category : #general }
Quotes >> importQuotes: quotesString [
	"Converts newline-separated string into a collection.  "
	"Store it in instance variable 'quotes'"
	""
	"Ex:"
	"Line one\nLine two\nLine three"
	" - converts to - "
	"the collection: ['Line one', 'Line two', 'Line three']"
	|re|
	re := '(\\n)+' asRegex.
	quotes := quotesString splitOn: re. 
	
	^ quotes

]
