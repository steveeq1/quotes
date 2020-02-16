Class {
	#name : #QuotesPresenter,
	#superclass : #ComposablePresenter,
	#instVars : [
		'myButton',
		'label',
		'projectList',
		'checkbox_1',
		'checkbox_2',
		'checkbox_3'
	],
	#classInstVars : [
		'checkboxes'
	],
	#category : #QuotesProg
}

{ #category : #initialization }
QuotesPresenter class >> defaultSpec [
	|foo|
	foo := SpecColumnLayout composed
			add: #label height: self toolbarHeight;
			add: #projectList.
	^ foo yourself.
			
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

{ #category : #initialization }
QuotesPresenter >> initializeWidgets [
	"label"
	label := self newLabel.
	label label: 'this is a test label'.
	
	"Checkboxes"
	checkbox_1 := self newCheckBox label: 'one'.
	checkbox_2 := self newCheckBox label: 'two'.
	checkbox_3 := self newCheckBox label: 'three'.	

	"Bottom button"
	myButton := self newButton.
	myButton label: 'Press me'.

	"Project list"
	projectList := self newList displayBlock: [ :x | x buildWithSpec ];
	items: {checkbox_1 . checkbox_2 . checkbox_3}.
]

{ #category : #accessing }
QuotesPresenter >> label [
	^ label.
]

{ #category : #accessing }
QuotesPresenter >> myButton [
	^ myButton
]

{ #category : #accessing }
QuotesPresenter >> projectList [
	^ projectList.
]

{ #category : #initialization }
QuotesPresenter >> title [
	^ 'test title'.
]
