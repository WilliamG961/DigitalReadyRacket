;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Assignement 4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
#|
Digital Ready CS002
Assignment 4 - Conditional Statements
Submit on Google Classroom by the end of class.

If a question asks you to make a function,
it must follow the complete design recipe
including a purpose statement, signature
and appropriate tests to recieve full credit
|#

; Question 1:
; Why are if statements useful in programming?

 ;"if" helps us make desicion with easy

; Question 2:
; What are the three logical operators?

;and,not,or



#| Question 3:
Make a function called say-positive? that takes in a number
and returns "Positive!" if the number
is 0 or greater, and returns "Negative!"
if the function is less than 0.

For example,
(say-positive? 34) -> "Positive!"
(say-positive? -23) -> "Negative!"
|#

;Purpose statement

;say-positive takes in a number and returns postive

;signature

;say-postive: string ----> string


(define (say-postive num1)
(if (>= num1 0)
    "postive"
    "negative"))

(check-expect(say-postive 2)"postive")
 
 


#| Question 4
Make a function called positive-mult
that takes in two numbers and returns
their product if both are positive,
and 0 if either are negative

For example,
(positive-mult 2 3) -> 6
(positive-mult -2 3) -> 0
|#

;Purpose Statement
;positive-mult takes two nums and returns their products if postive


;signature
;postive-mult: number number ----> number


(define (postive-mult num1 num2)
 ( if(and( postive? num1 )(postive? num2 ))
         (* num1 num2)
         0))

 (check-expect(postive-mult? 4 4)16)
 
 
        


#| Question 5
Define a variable called PASSWORD
that contains any password you'd like.
Make a function called check-password
that takes in a string.
If that input matches your password,
return "Access Granted".
If that input does not match your password,
return "Access Denied".
|#


;Purpose statement
;check-password checks if  password  is correct or not

;signature

;check-password string---->string

 ;(define(PASSWORD "William")

  (define(check-password "William")
    (if(string=? PASSWORD)
    "Access Granted"
    "Aceess Denied"))
   

 (check-expect(PASSWORD "William")"Access Granted")


 
#|bonus
Make a function called check-overlap
that takes in two strings.
If the first string is contained in the second
string OR the second string is contained
in the first string, return "Strings Overlap".
If the strings do not overlap, return "No Overlap".

For example,
(check-overlap "Racecar" "Car") -> "Strings Overlap"
(check-overlap "Smith" "Blacksmith") -> "Strings Overlap"
(check-overlap "Chocolate" "Chip") -> "No Overlap"

Hint: You will need to use the function
(string-contains? str1 str2)
string-contains? returns #true if st2 is contained in str1,
and false otherwise.
|#

#| Bonus Question
Make a function called valid-website
that takes in a string.
If the string begins with "www."
and ends with ".com", ".org", or ".net",
return "Valid Website".
If it does not, return "Invalid Website."

For example:
(valid-website "www.google.com") -> "Valid Website"
(valid-website ".comgoolewww.) -> "Invalid Website"

Hint: You will need to use the functions
(string-prefix str1 str2)
(string-suffix str1 str2)
These functions check if str2 is at the beginning or end
of str1, respectively
|#