Class {
	#name : #Quotes,
	#superclass : #Object,
	#instVars : [
		'quotes'
	],
	#category : #QuotesProg
}

{ #category : #'as yet unclassified' }
Quotes >> get_file: filename [
	|contents file|
	file := FileStream fileNamed: filename. 
	contents := file contentsOfEntireFile.
	^ contents

]

{ #category : #'as yet unclassified' }
Quotes >> importQuotesString: quotesString [ 
	|re|
	re := '(\\n)+' asRegex.
	quotes := quotesString splitOn: re. 
	
	^ quotes

]

{ #category : #'as yet unclassified' }
Quotes >> randomQuote [
	"returns a random quote from the [quotes] collection"

	^ quotes shuffled first

]
