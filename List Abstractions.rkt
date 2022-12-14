;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname |Assignment 11|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 11 - List Abstractions
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit

If a question asks you to make a structure,
it must follow the complete design recipe
including a definition, interpretation,
and appropriate examples to recieve full credit
|#

#| Question 1
Briefly state all of the list abstractions,
and what their purposes are
|#


;ANDMAP does every element in a list satisfy a predicate 
;ORMAP  does any element in a list satisfy a predicate
;FILTER removes items from a list that dont satisfy a predicate
;FOLDR  combies a list into a single element, from left to right
;FOLDL  combines a list a single element, from them right to left 
;MAP    applies a function to element in list


#| Question 2
Remake the (list-product) function
from assignment 10 using list abstraction.
|#

(define (list-product lon)
  (foldr * 1 lon))

(check-expect list-product(list 1 2 3)6)
  

#| Question 3
Remake the (all-caps) function
from assignment 10 using list abstraction
|#

(define NAMES(list "william" "john" "peter"))

(define(all-caps lon)
  (map string-upcase lon))
 
(check-expect (all-caps NAMES(list "william" "john" "peter")"WILLIAM" "JOHN" "PETER"))


#| Question 4
Remake the (has-large-numbers?) function
from assignment 10 using list abstraction

Hint: You will need to make a helper function
|#

(define (greater-than-10 num)
  (> num 10))

(define (has-large-numbers? lon)
(filter > greater-than-10 lon))

(check-expect (greater-than-10(list 1 2 3 40)#true))


#| Question 5
Here is the student structure you made in assignment 10:
|# (define-struct student (name id grades)) #|
Remake the (get-gpa) function
from assignment 10 using list abstraction
|#




#| Question 6
Here is the classroom structure as defined in assignment 10:
|# (define-struct classroom (room teacher students))

#|
Remake the (filter-grades) function
from assignment 10 using list abstraction
|#