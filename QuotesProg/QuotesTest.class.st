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
	quotes_collection := quotes importQuotes: 'quote one\n\nquote two\n\nquote three'.
	random_quote := quotes getRandomQuote.
	self assert: (quotes_collection includes: random_quote).
]

{ #category : #tests }
QuotesTest >> testGetFileListing [
	"see if I can create a list of files in a directory"

	| dir_listing myFile |
	dir_listing := Quotes getFileNames: '/home/steve/code/quotes/test_files/'. 
	self assert: (dir_listing size) equals: 2.
	
	myFile := dir_listing at: 1.
	self assert: (myFile at: #filename) equals: '/home/steve/code/quotes/test_files/this is file_two.txt'.
	self assert: (myFile at: #title) equals: 'this is file two'.
		
	myFile := dir_listing at: 2.
	self assert: (myFile at: #filename) equals: '/home/steve/code/quotes/test_files/this is file one.txt'.
	self assert: (myFile at: #title) equals: 'this is file one'.
]

{ #category : #tests }
QuotesTest >> testImportQuotes [
	"convert a string of quotes into a collection of individual quotes"
   
   |myString quotesCollection|
   myString := 'quote one\n\nquote two\n\nquote three'.
 	quotesCollection := (#('quote one' 'quote two' 'quote three') asOrderedCollection).
	self assert: (Quotes new importQuotes: myString) equals: quotesCollection.
]

{ #category : #tests }
QuotesTest >> testPrettifyFilename [
	"takes a string, usually a filename, and makes it pretty"
	"Example: 'William_shakespeare_quotes.txt => 'william shakespeare quotes'"

	self assert: (Quotes prettifyFilename: 'William_shakespeare_quotes.txt') 
		  equals: 'william shakespeare quotes'.
		
	self assert: (Quotes prettifyFilename: 'William_shakespeare_quotes.org') 
		  equals: 'william shakespeare quotes'.
]
