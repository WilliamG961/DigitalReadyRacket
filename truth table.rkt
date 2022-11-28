;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignment 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 5 - Truth Tables and Cond
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit
|#

; Question 1
; Complete the following truth table:
#|
---------------------
| P | Q | (and P Q) |
| #t| #t| t          |
| #t| #f|  f         |
| #f| #t|  f         |
| #f| #f|   f        |
---------------------
|#

; Question 2
; Complete the following truth table:

#|
-------------------------------------
| P | Q | (not P) | (and (not P) Q)) |
| #t| #t|   f      |   f               |
| #t| #f|    f     |   f               |
| #f| #t|    t     |   t               |
| #f| #f|   t      |   f               |
--------------------------------------
|#

; Question 3
; Complete the following truth table:

#|
--------------------------------------------------------
| P | Q | (and P Q) | (not P) | (or (not P) (and P Q)) |
| #t| #t|    t       |     f    |     f                   |
| #t| #f|   f        |    f     |      t                  |        
| #f| #t|    f       |    t     |      f                  |       
| #f| #f|   f        |    t     |      t                  |        
--------------------------------------------------------
|#

#| Question 5:
Make a function called "num-cond" that takes in 2 numbers.
If the first number is bigger, subtract the two numbers.
If the second number is bigger, multiply the two numbers.
If they are the same number, simply return that number.
|#

;Purpose statement

;takes the first number subtract if its bigger than the other 
;takes the second number times if its bigger than the order 
;if they have they have the  same number it will return it

;method signature
;num-cond :number number -------> number 


(define(num-cond num1 num2 )
  (cond
   [(> num1 num2) (- num1 num2 )]
   [(< num1 num2) (* num2 num1 )]
   [else num1]))

(check-expect(num-cond 3 2 )1)
(check-expect(num-cond 2 3) 6)
(check-expect(num-cond 2 2) 2 2)




#| Question 6:
Make a function called "super-cond" that takes in 3 numbers.
If all three numbers are negative, return 0
If the first two numbers are negative, return 1
If the first and third numbers are negative, return 2.
If the second and third numbers are negative, return 3.
If all of the numbers are positive, return the product of all 3 numbers.


;purpose statement
;takes three numbers and returns 0 if it negs
;takes the first two numbers  and returns 1 if it negs
;takes the first and third numbers and returns 2 if it negs
;takes the second and third numbers are returns 3 if its negs
;takes all positives and returns the product of all 3 numbers 


;method signature
;super-cond: number number number ------> number

|#

(define(super-cond num1 num2 num3)
  (cond
    [(and(< num1 0) (< num2 0) (< num3 0)) 0]
    [(and(< num1 0) (< num2 0) (> num3 0)) 1]
    [(and(< num1 0) (> num2 0) (< num3 0)) 2]
    [(and(> num1 0) (< num2 0) (< num3 0)) 3]
    [else (* num1 num2 num3)]))


(check-expect (super-cond -3 -4 -5)0)
(check-expect (super-cond -3 -3 4)1)
(check-expect (super-cond -3 9 -5)2)
(check-expect (super-cond  3 9  3)3)

                                          








    
#| Bonus Question:
Make a function called "vowel-check" that takes in 1 string.
If the function contains a vowel, return the first vowel the string contains.
If the function contains no vowels, return "No Vowels".

For example,
(vowel-check "airplane") -> "a"
(vowel-check "bear") -> "e"
(vowel-check "xyz") -> "No Vowels"
|#