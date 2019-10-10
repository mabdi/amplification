Class {
	#name : #AssertEquals,
	#superclass : #AssertTransform,
	#category : #'Amplification-Helpers'
}

{ #category : #running }
AssertEquals >> assertPattern [
	^ '``@actual = ``@expected'
]

{ #category : #running }
AssertEquals >> findPattern [
	^ {'self assert: ``@actual equals: ``@expected'}
]
