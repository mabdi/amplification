Class {
	#name : #GeneralHelper,
	#superclass : #Object,
	#category : #'Amplification-Helpers'
}

{ #category : #'as yet unclassified' }
GeneralHelper class >> randomString [
		| string |
	string := String
		streamContents: [ :stream | 
			stream write: Character alphabet.
			stream write: Character alphabet asUppercase.
			stream write: '0123456789' ].
	^ (String new: 10) collect: [ :each | string atRandom ]
]

{ #category : #'as yet unclassified' }
GeneralHelper class >> renameTempVars: anStr [
	^ anStr
		copyWithRegex: 'tmp_([a-z0-9A-Z]+)\d+'
		matchesTranslatedUsing: [ :each | 'tmp' , (each allButFirst: 14) ]
]

{ #category : #'as yet unclassified' }
GeneralHelper class >> stripMethodSrc: aMethod [
	^ self stripString: aMethod sourceCode 
]

{ #category : #'as yet unclassified' }
GeneralHelper class >> stripString: aString [ 
	^ aString copyWithoutAll: {Character cr. ' '. Character tab }
]

{ #category : #'as yet unclassified' }
GeneralHelper class >> timeTick [
	^ (DateAndTime now - DateAndTime unixEpoch) asMilliSeconds
]
