Class {
	#name : #Quotes,
	#superclass : #Object,
	#instVars : [
		'quotes'
	],
	#category : #QuotesProg
}

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
