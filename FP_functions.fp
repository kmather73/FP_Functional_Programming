onlyOne is null o tail.

second is first o tail.

sum is (if null {0} + o [first, sum o tail]).

incr is + o [id, {1}].

decr is - o [id, {1}].

isZero is = o [id, {0}].

odd is = o [{1} , mod o [id , {2}]].

addToEnd is rotl o cons.

upToN is (if isZero {<>} 
	 addToEnd o [id, upToN o decr]).

allSame is (if null {T}
				(if onlyOne {T}
						and o [ = o [first, second] , allSame o tail] )).

key is first.

list is second.

deleteAll is (if null o list {<>} 
				(if =o[key, first o list]
					deleteAll o [key, tail o list]
					cons o [first o list, deleteAll o [key, tail o list] ]).

deleteOne is (if null  {<>}
					(if = o [key, first o list] 
								tail o list
									cons o [first o list, deleteOne o [key, tail o list]])).


butLast is (if onlyOne {<>} 
				cons[first , butLast o tail]).

min is (if <= first second).

minOf is (if onlyOne first
				min o [first, minOf o tail]).

selSort is (if null {<>}
				cons o [minOf, selSort o deleteOne o [minOf, id]]).

lessThen is (if null o list {<>}
					(if <o[first, first o list]
							lessThen o [first, tail o list]
							cons o [first o list, lessThen o [first, tail o list]]
					 			)).

mod10 is mod o [id , {10}].

div10 is div o [id, {10}].

sumDigits is (if =o[{0}, id] {0} 
				+ o [mod10, sumDigits o div10]).

checkSum is div10 o sumDigits.

even is = o [id, {2}].

length is (if null {0} 
				+ o [{1}, length o tail]).

evenLength is even o length.

clickStop is (if =o[{0}, first o rotl] rotl
				clickStop o rotl).

maxOfTwo is (if > first second).

findMaxValue is (if onlyOne 
					second o first
					maxOfTwo o [second o first, findMaxValue o tail]).

topScore is (if =o[findMaxValue , second o first]
						first o first
						topScore o tail).

third is (second o tail).

replaceAll is (if null o third {<>}
						(if =o[first o third, first]
								cons o [second, replaceAll o [first, second, tail o third]] 
								cons o [first o third, replaceAll o [first, second, tail o third] ])).

anyAtom is (if null {F}
			(if atom {T}
			or o [anyAtom o first, anyAtom o tail])).
