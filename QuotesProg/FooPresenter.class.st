Class {
	#name : #FooPresenter,
	#superclass : #ComposablePresenter,
	#category : #QuotesProg
}

{ #category : #specs }
FooPresenter class >> defaultSpec [
	^ SpecLayout composed.
]

{ #category : #initialization }
FooPresenter >> initializeWidgets [
	| registeredColorsList |
	registeredColorsList := ListModel new.
	registeredColorsList
	items: #('one' 'two' 'three');
	title: 'Registered colors'.
]
