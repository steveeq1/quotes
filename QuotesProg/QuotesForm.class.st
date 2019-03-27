Class {
	#name : #QuotesForm,
	#superclass : #ComposablePresenter,
	#instVars : [
		'okButton',
		'theLabel'
	],
	#category : #QuotesProg
}

{ #category : #specs }
QuotesForm class >> defaultSpec [
	^ SpecLayout composed
		newRow: [ :row |
			row add: #okButton ]
		origin: 0 @ 0 corner: 1 @ 0.7;
	yourself
]

{ #category : #api }
QuotesForm >> extent [ 
	^ 400@100
]

{ #category : #initialization }
QuotesForm >> initializeWidgets [
	"initialize widgets"
	okButton := self newButton.
	theLabel := self newLabel.
	
	"widget configuration"
	okButton 
		label: 'OK';
		icon: (self iconNamed: #thumbsUp)
]

{ #category : #initialization }
QuotesForm >> title [
	 	^ 'Select:'
]
