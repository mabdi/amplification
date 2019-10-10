Class {
	#name : #SmallBankTest38003,
	#superclass : #TestCase,
	#category : #'Amplification-TempClasses'
}

{ #category : #'as yet unclassified' }
SmallBankTest38003 >> testDeposit [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 10.
	self assert: b balance equals: 10.
	b deposit: 100.
	self assert: b balance equals: 110
]

{ #category : #'as yet unclassified' }
SmallBankTest38003 >> testInit [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	self assert: b balance equals: 0
]

{ #category : #'as yet unclassified' }
SmallBankTest38003 >> testWithdraw [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 100.
	self assert: b balance equals: 100.
	b withdraw: 30.
	self assert: b balance equals: 70
]

{ #category : #'as yet unclassified' }
SmallBankTest38003 >> testWithdraw_12 [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 100.
	self assert: b balance equals: 100.
	b withdraw: SmallInteger maxVal.
	self assert: b balance equals: 100
]

{ #category : #'as yet unclassified' }
SmallBankTest38003 >> testWithdraw_12_3 [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 200.
	self assert: b balance equals: 200.
	b withdraw: SmallInteger maxVal.
	self assert: b balance equals: 200
]

{ #category : #'as yet unclassified' }
SmallBankTest38003 >> testWithdraw_12_5 [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: SmallInteger maxVal.
	self assert: b balance equals: 1152921504606846975.
	b withdraw: SmallInteger maxVal.
	self assert: b balance equals: 0
]
