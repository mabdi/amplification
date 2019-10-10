Class {
	#name : #AbstractAssertAmplifier,
	#superclass : #Object,
	#category : #'Amplification-Core'
}

{ #category : #'as yet unclassified' }
AbstractAssertAmplifier >> doAssertAmplification: population amplifier: anAmplifier [
	self subclassResponsibility
]
