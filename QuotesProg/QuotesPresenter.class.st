Class {
	#name : #QuotesPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'topic_names',
		'label',
		'checkboxes'
	],
	#category : #QuotesProg
}

{ #category : #initialization }
QuotesPresenter class >> defaultSpec [
	^ SpecColumnLayout composed
		add: #label;
		yourself.
]

{ #category : #initialization }
QuotesPresenter >> initializeWidgets [

	label := self newLabel.
	label label: 'this is a test label'.
	checkboxes := self newCheckBox.
	
	^ 'foo'.
]

{ #category : #accessing }
QuotesPresenter >> label [
	^ label.
]

{ #category : #initialization }
QuotesPresenter >> title [
	^ 'test title'.
]
