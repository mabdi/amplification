"
Amplification initializeWithTests: UUIDGeneratorTests target: {UUIDGenerator}




Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State a one line summary. For example, ""I represent a paragraph of text"".

For the Responsibility part: Three sentences about my main responsibilities - what I do, what I know.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- (for bonus points) how to create instances.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.

    Instance Variables
	improvmentAlgorithm:		<Object>
	testClass:		<Object>
	testTarget:		<Object>


    Implementation Points
"
Class {
	#name : #Amplification,
	#superclass : #Object,
	#instVars : [
		'improvmentAlgorithm',
		'testMethods',
		'testTargets',
		'testClass',
		'newTestClass'
	],
	#category : #'Amplification-Core'
}

{ #category : #initialization }
Amplification class >> initializeWithTests: dicConfig [
	^ self new initializeWithTests: dicConfig
]

{ #category : #'as yet unclassified' }
Amplification >> classifyMethods [
	testTargets
		do:
			[ :anObjectUnderTest | SAMethodClassifier classifyClass: anObjectUnderTest ]
]

{ #category : #accessing }
Amplification >> initializeWithTests: dicConfig [
	testTargets := dicConfig at: #testTargets.
	testClass := dicConfig at: #testClass.
	testMethods := testClass allTestSelectors.
	improvmentAlgorithm := EvolutionaryAmplifer
		initializeWith: testClass
		target: testTargets
		iterations: (dicConfig at: #GAIteration ifAbsent: 3).
	improvmentAlgorithm testMethods: testMethods
]

{ #category : #actions }
Amplification >> launch [
	self preStartActions.
	self startAmplify.
	^ self postStartActions
]

{ #category : #accessing }
Amplification >> newTestClass [
	^ newTestClass
]

{ #category : #actions }
Amplification >> postStartActions [
	"self newTestClass rename: testClass name , 'Amp'"
	^ newTestClass 
	
]

{ #category : #actions }
Amplification >> preStartActions [
	| result |
	self classifyMethods. 
	result := testClass suite run.
	testTargets
		do:
			[ :atarg | atarg methods do: [ :mtd | ObservationProxy fixMethod: mtd ] ].
	testMethods := result passed
		collect: [ :passed | 
			(testClass methods detect: [ :m | m selector = passed selector ])
				sourceCode ].
	improvmentAlgorithm testMethods: testMethods
]

{ #category : #actions }
Amplification >> startAmplify [
	newTestClass := improvmentAlgorithm start
]
