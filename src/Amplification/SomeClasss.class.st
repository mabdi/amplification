Class {
	#name : #SomeClasss,
	#superclass : #Object,
	#category : #'Amplification-TempClasses'
}

{ #category : #'as yet unclassified' }
SomeClasss >> anotherMethod: text [
	^ text, '121212'
]

{ #category : #'as yet unclassified' }
SomeClasss >> someMethod: aBlock [
	{ 1. 2. 3 } do: aBlock 
]
