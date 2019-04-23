Class {
	#name : #QuotesForm,
	#superclass : #ComposablePresenter,
	#instVars : [
		'list'
	],
	#category : #QuotesProg
}

{ #category : #specs }
QuotesForm class >> defaultSpec [
"    <spec: #default>"

^ SpecLayout composed
	newRow: [ :row |
		row add: #list ]
	origin: 0 @ 0 corner: 100 @ 540.7;
	yourself

"    ^ SpecLayout composed
        add: #list;
        yourself"


]

{ #category : #api }
QuotesForm >> extent [ 
	^ 400@100
]

{ #category : #initialization }
QuotesForm >> initializeWidgets [
    list := self newList.    
    list items: (AbstractWidgetPresenter allSubclasses 
        sorted: [:a :b | a name < b name ]).
        
    self focusOrder add: list
]

{ #category : #accessing }
QuotesForm >> list [
	^ list
]

{ #category : #api }
QuotesForm >> title [
    ^ 'Widgets'
]

{ #category : #'events-shortcuts' }
QuotesForm >> whenSelectedItemChanged: aBlock [
    list whenSelectedItemChanged: aBlock
]
