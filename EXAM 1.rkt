;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |EXAM 1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
#| Digital Ready CS001
Exam 1

This exam is completely open resource.
There are no restrictions on what materials
you may use to help you answer the questions,
including your notes, class slides,
previous assignments and the Racket documentation.

You may not communicate with anyone else during
this exam. If you do this will be considered
cheating, and you will recieve a 0.
|#

#| --- PART ONE: DATA --- |#

#| Question 1
Define the following data:
- A Number variable containing your age
- A String variable contianing your first name
- A String variable containing your last name
|#

(define age 19)
(define first-name "William")
(define last-name "Nosike")

#| Question 2
Use string-append, number->string and your answer to Question 1
to form the sentence "Hi! My name is *first-name* *last-name*
and I am *age* years old."

Save this sentence as a variable called "introduction"
|#

(define introduction(string-append "Hi! My name is" first-name last-name "and I am" age "years old" ))


#| Question 3
Complete the following math operations
and save them as variables named as shown below:
X = 15 + (2 * 4)
Y = ((5 - 12) * 3) / 4
Z = The cube root of 125
|#

(define X (+(* 2 4)15))
(define Y (/(*(- 5 12)3)4))
(define Z (expt 125))

                                   
#| --- PART TWO: FUNCTIONS --- |#
#| All functions require a complete design recipe
   Including a purpose statement, signature
   and an appropriate amount of tests.
|#
                                   
#| Question 4
Create a function called (greater-than-50?)
that returns if a number is greater than 50

For example,
(greater-than-100? 140) => #true
(greater-than-100? 43) => #false
|#

;Purpose Statement
;Finds a number greater than 50

;Method signature
;greater-than-50?: number----->boolean


(define(greater-than-50? num1)
  (> num1 50))

(check-expect(greater-than-50? 60)#true)
(check-expect(greater-than-50? 40)#false)



#| Question 5
The band "The Rackets" has signed a deal
with Programmer Records for their new album.
For this deal, they'll recieve a $1000 signing bonus
plus $3 for every copy the album sells.

Create a function called (album-sales)
that takes in a number of albums
sold and returns how much money the
band will make.

For example,
(album-sales 1000) -> 4000
|#

;Purpose Statement
;Takes number of sales and returns they make

;Method signature

;album-sales: number ------->number

(define(album-sales numsale)
  (* numsale 1003))

(check-expect(* 1003 10)10030)

#| Question 6
Create a function called (first-three)
that takes in a string
and returns the first three letters of that string.

For example,
(first-half "Hamburger") => "Ham"
|#

;Purpose statement
;Takes a string and returns its first three


;Method Signature

;first-three: string----> string

(define(first-three str1)
  (substring str1 0 3))
               
(check-expect(first-three "william")"wil")


#| --- PART 3: CONDITIONALS --- |#

#| Question 7
Make a function called (not-my-name?)
that takes in a string
and returns if it is NOT your first name,
as defined in question 1.

For example if your name is "Bob",
(not-my-name? "Bob") -> #false
(not-my-name? "Angie") -> #true
|#


;Purpose Statement
;takes a string and checks if its your name

;Method signature

;Not-my-name:string----->string


(define(not-my-name? str1)
  (if(string=? str1 first-name)
         "it is"
         "it is NOT"))

(check-expect (not-my-name? "William")"it is")
(check-expect (not-my-name? "keegan")"it is NOT")

 
#| Question 8
Make a function called (mixed-numbers)
that takes in two numbers.

If the first is even and second is odd,
return "First Even Second Odd"

If the first is odd and second is even,
return "First Odd Second Even"

If both are even, return "Both Even"

If both are odd, return "Both Odd"

For example,
(mixed-numbers? 2 4) => "Both Even"
(mixed-numbers? 3 4) => "First Odd Second Even"
(mixed-numbers? 4 3) => "First Even Second Odd"
|#


;Purpose statement
;checks if mixed number are even or not


;Method signature
;mixed-numbers: number number -----> string


(define(mixed-numbers? str1 str2)
  (cond
    [(and(even? str1 str2)"Both Even")]
    [(and(odd? str1 str2)"Both Odd")]
    [(and(/ str1 2 )( odd? str2)"First Even Second odd" )]
    [(and(odd? str1)(/ str2 2)"First odd Second Even")]))



(check-expect (mixed-number? 2 4)"Both Even")
(check-expect (mixed-number? 3 5)"Both Even")
(check-expect (mixed-number? 6 3)"First Even Second odd")
(check-expect (mixed-number? 3 4)"First odd Second Even")



#| Question 9
A bank is designing a program for withdrawing
money from a user's account. However,
they need to implement a safe check
so users can only withdraw a valid amount.

Create a function (valid-withdrawal)
that takes in two numbers,
one representing the amount of money
in an account and the second
representing the amount of money
the user would like to take out of the
account.

A withdrawal is valid if the user
would like to take out less than
or as much money is within the account.

A withdrawal is invalid if the user
would like to take out more money
than is in the account, or if
the user tries to take out a
negative amount of money.

If a withdrawal is valid, return
"Valid Withdrawal". If a
withdrawal is invalid, return
"Invalid Withdrawal".

For example,
(valid-withdrawal 1200 100) -> "Valid Withdrawal"
(valid-withdrawal 1200 1500) -> "Invalid Withdrawal"
(valid-withdrawal 1200 -100) -> "Invalid Withdrawal"
|#

#| --- PART 4: Structs --- |#
#| If a problem asks you to create a struct,
   it must include the full data design recipe
   including a definition, interpretation,
   and appropriate examples.
|#

#| Question 10
A new T-Shirt company, Digi-Tee Ready,
is coming up with a new database
to store their orders.

A T-Shirt order consists of:
- size of the shirt
- color of shirt
- string of text to be printed on the shirt
- number of shirts ordered

Define a new struct called "order"
that represents a t-shirt order.
|#

#| Question 11
Digi-Tee Ready has the following pricing
model for an order of shirts:

All shirts cost $15, plus
an additional $0.10 per letter
of text being printed on the shirt.

No matter how large the order,
there is a flat $10 shipping fee
on top of the price of the shirts.

Create a function called (order-price)
that takes in an order and returns
how much the order costs.
|#

#| Question 12
Digi-Tee Ready is having a sale
on "Small" and "X-Large" shirts.

Create a function called (sale-price)
that takes in an order of shirts and
returns how much the order costs
with the sale applied.

If the shirts are "Small" or "X-Large",
apply a 20% discount to the price of the order.
If the shirts are any other size,
they should cost the normal price
as defined in Question 11.

Hint: You can apply a 20% discount
by multiplying the cost by 0.8
|#

#| --- PART 5: Images --- |#

#| Question 13
Digi-Tee Ready is working on
a feature for their website
that will allow users to preview
their custom design.

Create the function (preview-shirt)
that takes in a custom-shirt and
displays it on a blank 500x500 scene.

The shirt can be very simple -
a rectangle body and 2 rectangle
sleeves will suffice.

The shirt should be the color
as defined in the order.

The shirt should have the
custom text as defined in the order
displayed in its center.


BONUS:
Give this function the ability
to display different sized shirts
at different scales:

If the shirt is "Small", scale it down by x0.75.
If the shirt is "Medium", keep it the regular size.
If the shirt is "Large", scale it by 1.25x
If the shirt is "X-Large", scale it by 1.5x.
|#

(require 2htdp/image)

;purpose statement
;Make a shirt with a scene

;scene
(define EMPTY-SCENE (empty-scene 500 500))

(align "left" "middle" "right"
              (rectangle 80 40 "solid" "orange")
              (rectangle 40 90 "solid" "green")
              (rectangle 40 90 "solid" "green"))

(text "Digital ready" 24 "white")




















#| Bonus Question
Design data that represents a 2D point with an
(x, y) position. Create a function called
"rectangle-maker" that takes in those
two points and draws a rectangle
where the first point is the top left
corner, and the second point is the
bottom right corner. This rectangle
should be filled, and can be
any color you'd like.

You do not have to place this rectangle
on a scene - the image produced
by the (rectangle) function will suffice.
|#

#| Bonus Question
I've been personally designing this curriculum
over the past few months, and I sincerely
appreciate you coming along with me as
we all try out something new.

Please write any honest feedback you
have on the Racket bootcamp so far -
positive, negative, or both,
and you will recieve bonus credit.
|#
