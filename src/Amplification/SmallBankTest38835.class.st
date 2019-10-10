Class {
	#name : #SmallBankTest38835,
	#superclass : #TestCase,
	#category : #'Amplification-TempClasses'
}

{ #category : #'as yet unclassified' }
SmallBankTest38835 >> testDeposit [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 10.
	self assert: b balance equals: 10.
	b deposit: 100.
	self assert: b balance equals: 110
]

{ #category : #'as yet unclassified' }
SmallBankTest38835 >> testInit [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	self assert: b balance equals: 0
]

{ #category : #'as yet unclassified' }
SmallBankTest38835 >> testWithdraw [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 100.
	self assert: b balance equals: 100.
	b withdraw: 30.
	self assert: b balance equals: 70
]

{ #category : #'as yet unclassified' }
SmallBankTest38835 >> testWithdraw_7 [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 0.
	self assert: b balance equals: 0.
	b withdraw: 30.
	self assert: b balance equals: 0
]

{ #category : #'as yet unclassified' }
SmallBankTest38835 >> testWithdraw_7_1 [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: 1.
	self assert: b balance equals: 1.
	b withdraw: 30.
	self assert: b balance equals: 1
]

{ #category : #'as yet unclassified' }
SmallBankTest38835 >> testWithdraw_7_2 [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: -1.
	self assert: b balance equals: -1.
	b withdraw: 30.
	self assert: b balance equals: -1
]

{ #category : #'as yet unclassified' }
SmallBankTest38835 >> testWithdraw_7_6 [
	<madeBySmallAmp>
	| b |
	b := SmallBank new.
	b deposit: SmallInteger minVal.
	self assert: b balance equals: -1152921504606846976.
	b withdraw: 30.
	self assert: b balance equals: -1152921504606846976
]
