Class {
	#name : #ErrorSerializer,
	#superclass : #AbstractSerializer,
	#category : #'Amplification-Helpers'
}

{ #category : #asserting }
ErrorSerializer class >> makeAssertError: aValue [
	| assertStatement theMessage theError |
	theMessage := RBVariableNode named: 'fake'.
	theError := RBVariableNode named: aValue.
	assertStatement := RBMessageNode
		receiver: (RBSelfNode named: 'self')
		selector: #should:raise:
		arguments:
			{theMessage.
			theError}.
	^ assertStatement
]

{ #category : #asserting }
ErrorSerializer class >> makeAssertName: aName value: aValue last: theLast [
	
	^ {}
]

{ #category : #'as yet unclassified' }
ErrorSerializer class >> myTag [
	^ #error
]

{ #category : #accessing }
ErrorSerializer class >> priority [
	^ 10
]

{ #category : #'as yet unclassified' }
ErrorSerializer class >> supportingTypes [
	^ {Error}
]

{ #category : #'as yet unclassified' }
ErrorSerializer class >> unserialize: dictionary [
	^ dictionary
]

{ #category : #testing }
ErrorSerializer >> isEqualWith: theLast [
^ false
]

{ #category : #private }
ErrorSerializer >> serializeDepth: anInt [
	^ Dictionary
		newFrom:
			{(#value -> object class).
			(#class -> object class).
			(#type -> self class myTag)}
]
