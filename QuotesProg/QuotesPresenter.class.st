Class {
	#name : #QuotesPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'back_button',
		'forward_button',
		'text_area'
	],
	#category : #QuotesProg
}

{ #category : #specs }
QuotesPresenter class >> defaultSpec [
	^ SpBoxLayout newHorizontal
		add: #back_button;
		add: #text_area;
		add: #forward_button;
		yourself.
]

{ #category : #accessing }
QuotesPresenter >> back_button [
	^ back_button
]

{ #category : #accessing }
QuotesPresenter >> forward_button [
	^ forward_button
]

{ #category : #initialization }
QuotesPresenter >> initializePresenter [ 
	back_button action: [ UIManager default alert: 'hello, world!' ].
	forward_button action: [ UIManager default alert: 'goodbye, cruel world!' ].
]

{ #category : #initialization }
QuotesPresenter >> initializeWidgets [ 
	back_button := self newButton.
	forward_button := self newButton.
	text_area := self newText.
	back_button label: '<<'.
	forward_button label: '>>'.
	
	self focusOrder
		add: back_button;
		add: text_area;
		add: forward_button.
]

{ #category : #accessing }
QuotesPresenter >> text_area [
	^ text_area.
]

{ #category : #TOREMOVE }
QuotesPresenter >> title [
	^ 'Name photo'
]
