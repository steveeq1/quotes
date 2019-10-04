Class {
	#name : #QuotesPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'topic_names',
		'label',
		'checkboxes',
		'checkbox_1',
		'checkbox_2',
		'checkbox_3'
	],
	#category : #QuotesProg
}

{ #category : #initialization }
QuotesPresenter class >> defaultSpec [
	|foo|
	foo := SpecColumnLayout composed. 
	foo add: #label height: self toolbarHeight.
	#checkboxes each: [ :f | foo add: #checkbox_1 height: self toolbarHeight].
	"foo add: #checkbox_1 height: self toolbarHeight.
	foo add: #checkbox_2 height: self toolbarHeight.
	foo add: #checkbox_3 height: self toolbarHeight."
	foo yourself.
	^ foo.
]

{ #category : #accessing }
QuotesPresenter >> checkbox_1 [
	^ checkbox_1
]

{ #category : #accessing }
QuotesPresenter >> checkbox_2 [
	^ checkbox_2
]

{ #category : #accessing }
QuotesPresenter >> checkbox_3 [
	^ checkbox_3
]

{ #category : #accessing }
QuotesPresenter >> checkboxes [
	^ checkboxes.
]

{ #category : #initialization }
QuotesPresenter >> initializeWidgets [
	|foo|
	label := self newLabel.
	label label: 'this is a test label'.
	foo := #('one' 'two' 'three' 'four').
	checkboxes := foo collect: [ :f | self newCheckBox label: f ].
	checkbox_1 := self newCheckBox label: 'one'.
	checkbox_2 := self newCheckBox label: 'two'.
	checkbox_3 := self newCheckBox label: 'three'.	
	
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
