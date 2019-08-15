Class {
	#name : #QuotesForm,
	#superclass : #ComposablePresenter,
	#instVars : [
		'theList',
		'theButton'
	],
	#category : #QuotesProg
}

{ #category : #specs }
QuotesForm class >> defaultSpec [
	^ SpecLayout composed
 	   newRow: [ :row |
  	      row
   	         add: #theList;
    	      add: #theButton
    	];
    	yourself
]

{ #category : #api }
QuotesForm >> extent [ 
	^ 200@800
]

{ #category : #initialization }
QuotesForm >> initializeWidgets [
	theList := self newList.
	theButton := self newButton.
    
	theList items: #(1 2 3 4).
	theButton label: 'I am a button'.    
    
   self focusOrder add: theList; add: theButton.
]

{ #category : #accessing }
QuotesForm >> list [
	^ list
]

{ #category : #accessing }
QuotesForm >> theButton [
	^ theButton.
]

{ #category : #accessing }
QuotesForm >> theList [
	^ theList
]

{ #category : #api }
QuotesForm >> title [
    ^ 'Widgets'
]

{ #category : #'events-shortcuts' }
QuotesForm >> whenSelectedItemChanged: aBlock [
    list whenSelectedItemChanged: aBlock
]
