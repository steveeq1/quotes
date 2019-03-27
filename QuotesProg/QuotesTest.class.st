Class {
	#name : #QuotesTest,
	#superclass : #TestCase,
	#category : #QuotesProg
}

{ #category : #tests }
QuotesTest >> testChooseRandomQuote [
	"object can choose a random quote from the [quotes] instance variable"

   |quotes random_quote quotes_collection|
	quotes := Quotes new.
	quotes_collection := quotes import: 'quote one\n\nquote two\n\nquote three'.
	random_quote := quotes getRandomQuote.
	self assert: (quotes_collection includes: random_quote).
]

{ #category : #tests }
QuotesTest >> testImportQuotes [
	"convert a string of quotes into a collection of individual quotes"
   
   |myString quotesCollection|
   myString := 'quote one\n\nquote two\n\nquote three'.
 	quotesCollection := (#('quote one' 'quote two' 'quote three') asOrderedCollection).
	self assert: (Quotes new import: myString) equals: quotesCollection.
]
