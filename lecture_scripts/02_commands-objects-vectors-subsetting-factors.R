#### 2
## R commands (expressions and assignments).
## Objects.
## Vectors.
## Subsetting.
## Mode and attribute of objects.
## Factors.

##**** Comments ****##
## start with a hashmark #
## can be put almost anywhere
## are valid until the end of the current line

# This is a comment. It is good to the end of the current line.
# Comments don't need to be at the beginning.

## This is how I generally use comments (two #).

## There is no multi-line comment
## facility (as /* ... */ in C).

##**** Expressions in R ****##
## R can be used to evaluate mathematical expressions
## Basic arithmetic
1 + 1
## Group with parentheses
7 * (12 + 4) / (3 - 25)
## Use defined functions
sin(pi/2) + log(12) - 45^(1/3) + sqrt(2)
33 %/% 7    ## Integer division: quotient
33 %% 7     ## Integer division: remainder, or modulus

## Note the [1] that appears before the results. R is
## informing that
## the result of each calculation is a vector (numerical in
## this case) whose first (and only) element has the
## value printed.


## Your turn:
## Find the solutions of the second degree equation:
## x^2 - 5*x + 6 = 0



# Begin solution ----------------------------------------------------------
(-5 + sqrt(5**2 - 4*(1)*(6)))/2
(-5 - sqrt(5**2 - 4*(1)*(6)))/2
# End solution ------------------------------------------------------------


##**** Assignments in R ****##
## The expressions above were evaluated, printed, and lost.
## To keep results, they need to be assigned to an object name.
## To assign use "<-" (in most cases "=" can also be used).
m <- 1 + 1           ## Note: 1 + 1 -> m    is also valid!
m

## When assigning a value to an object name, the result is
## not printed.
## To assign and print in one step, surround the assignment
## command with parentheses.
(m <- 5)


##**** R is Case Sensitive ****##

## For example, the object name ``m'' differs from the 
## object name ``M''.
m
M

## As ``M'' has not been assigned a value,
## R triggers an error.


## Your turn:
## Find the general solutions of a second degree equation:
## a*x^2 + b*x + c = 0
## and find the particular solutions when
## where a = 1, b = -5, c = 6
## NOTE: your expressions should contain the letters a, b and c,
##       not the values 1, -5, 6


# Begin solution ----------------------------------------------------------
quad <- function(a, b, c) {
  roots <- c((-b + sqrt(b**2 - 4*(a)*(c)))/2*a,(-b - sqrt(b**2 - 4*(a)*(c)))/2*a)
  return(roots)
}

quad(1, -5, 6)

# End solution ------------------------------------------------------------



##**** Valid Symbols for Object Names ****##
## * All alphanumeric symbols plus "." and "_"
## * First character must be a letter (or "." followed
##   by a letter)
## * There is no restriction on length of name.


## Examples of valid object names:
variableName23 <- 9   # Camel case strategy
variable_name_23 <-8  # Snake case strategy
.T78 <- 7     # Variables that start with . are considered
# hidden


##**** R commands ****##
## * consist of either expressions or assignments
## * are separated either by a newline or by ";"
## * can be grouped together by braces "{" and "}"

a <- 6  ## Separating commands with newline
a + 5

a <- 6; a + 5 ## Separating with ; (same line)

## Grouping commands (very useful in functions,
## conditional statements and loops)
{   
  a <- 6
  a + 5    ## Note: this output is not printed!
  a + 3    ## When grouping, only the last output is printed
}

## Note: if you want to output the intermediate results inside a block
##       use the function `print`.
{
  a <- 6
  print(a + 5)    ## Note: this output is printed too
  a + 3
}


##**** R Commands in Multiple Lines ****##
## If a command is incomplete at the end of the line, R
## will continue to search on the following lines until the
## command is complete.
a <-
  6 +
  12
## This command took 4 lines to be syntactically complete

(a <-
    6
  + 12
)
## In this case it was not important where the
## "+" was located.

## Play with multiline expressions to understand when
## you can split them into multiple lines and when not.


##**** Objects ****##
## R is an ``object-oriented'' language in the sense that
## it operates on objects.
## Basic R objects include:
## * numerical, character, and logical vectors
## * factors
## * arrays (of which matrices are a particular case)
## * lists
## * data frames

## There are more objects (such as expressions and functions,
## and closures)
## that will be treated later in the course.

## NOTE: A recent package (R6) implements a new class of
##       objects (also called R6) that provides many
##       aspects of an object oriented language in the
##       traditional sense.

##**** Inspecting Objects ****##

a <- 12 ## Define a simple object
## Use the following functions to inspect the nature of an
## object:

mode(a)        # Storage mode of an object
typeof(a)      # Type of an object
str(a)         # Structure of an object
length(a)      # Number of elements of an object

##**** Listing and Removing Objects ****##
objects()               ## List defined objects

rm(VariableName23, m)   ## Remove some of them

objects()               ## Remaining objects

## To also show objects that start with "." (hidden by default)
objects(all.names = TRUE)



##**** Vectors ****##

## A vector is a single entity consisting of an ordered
## collection of elements of the *same* type (mode).
## To define a vector use the function c() (concatenate).
(a <- c(3, 1, 8.5, -1))       ## Numerical vector
str(a)

(a <- c(3+2i, 0+1i, -1, 4-1i)) ## Numerical [complex] vector
str(a)

(a <- c("Hello", "world"))     ## Character vector
str(a)

(a <- c(TRUE, FALSE, FALSE, T, F))   ## Logical vector
str(a)

## Vectors need to be of 1 type only
str( c(1, "Hello", 4, TRUE) ) 
## R transformed all to character

as.

##**** Vectors: Coercion ****##
a <- c(1,2,3,4,5)
str(a)
a <- as.character(a)
str(a)
a <- as.integer(a)
str(a)


## Your turn:
## Coerce a to numeric, then to complex,
## then to character, and finally to numeric.
## Does it work?


# Begin solution ----------------------------------------------------------

a <- as.numeric(a)
str(a)

a <- as.complex(a)
str(a)

a <- as.character(a)
str(a)

a <- as.numeric(a)
str(a)
#no -- the strings representing complex numbers are not coerced into numeric values
# End solution ------------------------------------------------------------



##**** Vectors: Arithmetic ****##
a <- c(1, 2, 3, 4, 5)
a + 1   ## Sum 1 to EACH element of a
a^2     ## Square EACH element of a
sqrt(a) ## Square root of EACH element of a
sum(a)  ## Sum of ALL elements of a
a / sum(a) * 100
b <- c(1, 2)
a * b ## BE AWARE: R recicles [even fractionally]
## shorter vectors



## Your turn:
## Write the solutions of the second order equation that
## you solved before, but using only one expression
## (and not two as before).
## You should get one vector with two elements, each of them
## representing one solution.



# Begin solution ----------------------------------------------------------
quad <- function(a, b, c) {
  roots <- c((-b + c(1,-1)* sqrt(b**2 - 4*(a)*(c)))/2*a)
  return(roots)
}

quad(1,-5,6)
# End solution ------------------------------------------------------------


##**** Vectors: Regular Sequences ****##
1:15
15:1

seq(from = 1, to = 9.75, by = 0.5)

seq(from = 1, to = 10, length.out = 20)

## Your turn:
## Find the expression that will provide the "by"
## corresponding to the second seq above.
## Hint: use the values of "from", "to", and "length.out"
##       to find the result
## Verify that it gives the same result



# Begin solution ----------------------------------------------------------


# End solution ------------------------------------------------------------



##**** Vectors: Repeating Patterns ****##
rep(1:4, times = 3)
rep(1:4, each = 2)
rep(1:4, each = 2, times = 3)
rep(1:4, times = c(3, 1, 5, 2))


##**** Missing and Special Values ****##
## * NA stands for missing (Not Available)
## * NaN stands for Not a Number
(a <- c(2, NA, 1/0, -Inf, 0/0, Inf-Inf))
is.na(a)
is.nan(a)
is.na(a) & !is.nan(a)
is.finite(a)
is.infinite(a)


##**** Subsets of Vectors by using Index Vectors ****##
## A subset of a vector may be selected by using an index
## vector.
## The syntax is: vector[index_vector]
## There are four different types of index vectors:
## * Positive integral quantities vector
## * Negative integral quantities vector
## * Character vector
## * Logical vector


##**** Positive Integral Quantities Index Vector ****##
## * Values in the index vector must lie in the set 
## \{1, 2, ..., length(x)\}.
## * Values not in this set will produce NAs.
## * Corresponding elements of the vector are selected and
##   concatenated, in that order, in the result.
## * The index vector can be of any length and the result
##  is of the same length as the index vector.


##**** Positive Integral Quantities Index Vector ****##
(a <- 11:20)
a[3]
a[2:4]
a[c(1, 7, 4, 39)]
(1:10)[10:1]

## For biologists, let's generate some DNA
## (with a CpG island)
nucleotides <- c("A", "C", "T", "G")
nucleotides[c(2, 4, 1, 1, 2, 3, rep(c(2, 4), 14), 1, 2, 1, 3, 3, 4, 4, 4)]



## Your turn (in HW 1):
## How to obtain a systematic sample.
## Given the following data:
data <- c(23, 43,  1, 34,
          26, 85, 24, 43,
          23, 93, 29, 45,
          32, 42, 89, 65,
          21, 54, 37, 76)
## get a sample of size n = 5 by extracting each
## value every K = N/n elements
## (where N is the total number of elements in data).
## Your first element needs to be randomly determined
## as a number between 1 and K
## [hint: use "sample(K, 1)" to obtain it]
## Your result needs to be a vector containing
## the 5 elements that are part of your systematic sample.



# Begin solution ----------------------------------------------------------


# End solution ------------------------------------------------------------




##**** Negative Integral Quantities Index Vector ****##
## Negative values in the index vector specify the values
## to be excluded.
a[-1]
a[c(-4,-2,-6)]
a[-c(4,2,6)]

a[c(-4,-2,6)]

a[c(-4,-2,0)]
a[c(-4,-2)]


## Your turn (in HW 1):
## Given the vector
a <- c(23, 45, 93, 23, 82, 26, 31, 73, 71, 32)
## obtain a vector of the differences
## (second - first, third - second, ...)
## using negative indexes.
## Note: there is an R function
diff(a)
## that you can use to verify if you got the
## correct result.



# Begin solution ----------------------------------------------------------


# End solution ------------------------------------------------------------



##**** Character Index Vectors ****##
## This indexing applies when an object has names assigned
## to the values.
## It is mostly used with lists and data.frames (seen later).
fruit <- c(orange = 5, banana = 10, apple = 1, peach = 20)
fruit

## Your turn:
## Using a Character Index Vector, get a subset of `fruit` containing only
## the amounts of banana and peach.


# Begin solution ----------------------------------------------------------


# End solution ------------------------------------------------------------



##**** Logical Index Vectors ****##
## Index vector must be of the *same length* as the vector
## from which elements are to be selected.
## If the length of the index vector is less than the vector,
## the index vector will be recicled with perhaps unwanted
## results.
## Values corresponding to TRUE in the index vector are
## selected.
## Values corresponding to FALSE are omitted.
a <- 11:20
a[c(TRUE,FALSE,TRUE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,FALSE)]
a[c(TRUE,FALSE,TRUE)] ## Index vector recycled.
## Analyze result.
a[c(TRUE,FALSE,TRUE,TRUE,FALSE,TRUE,FALSE,TRUE,FALSE,
    FALSE,TRUE,TRUE)]

## Your turn:
## Extract the values of `a` that are divisible by 3.
## Note: do not create by hand a TRUE FALSE vector as above, but
##       instead create an expression that will have as
##       a result the logical vector that will be used as an index.


# Begin solution ----------------------------------------------------------


# End solution ------------------------------------------------------------



## Your turn (in HW 1):
## Verify the "Empirical rule", that states that when data
## is drawn
## from a Normal distribution, 
## about 68% of the data is in the interval
##       (mean(x) - sd(x), mean(x) + sd(x))
## about 95% of the data is in the interval
##       (mean(x) - 2 * sd(x), mean(x) + 2 * sd(x))
## about 99.7% of the data is in the interval
##       (mean(x) - 3 * sd(x), mean(x) + 3 * sd(x))
## [hint: use "x <- rnorm(n)" to get a sample of size n
##        from a standard normal distribution]
## Use n = 1000




# Begin solution ----------------------------------------------------------


# End solution ------------------------------------------------------------



##**** Indexed Vector Assignment ****##
## An indexed vector can appear on the receiving end of
## an assignment.
## In this case the assignment operation is performed 
## only on those elements of the vector.
a[3] <- 44
a
a[c(1,4,6)] <- c(-4,27,67)
a
a[a%%3 == 0] <- NA
a


##**** Empty Objects, and Changing their Size ****##
## Create empty vectors
str(a <- character())
str(a <- numeric())
length(a)
length(a) <- 4   ## Change size
a
a[8] <- 7 ## Change size and assign value
a
## You can add and assign several values simultaneously
a[c(3, 10, 16)] <- c(12, -3, 45)
a


##**** Mode and Attribute of Objects ****##
## Getting and Setting Attributes of Objects
(a <- 1:12)
class(a)
attributes(a)
attr(a, "dim")
## Let's transform the vector into a matrix
attr(a, "dim") <- c(3, 4)
a
## Note: R arranges data by column
attributes(a)
class(a)



## Back to a vector
attr(a, "dim") <- NULL
a

## Now an array!
attr(a, "dim") <- c(2, 3, 2)
a
str(a)
class(a)

## Setting user-defined attributes
attr(a, "mycharattr") <- "Something important"
attr(a, "mynumattr") <- c(2, 34, 65, 1)
str(a)
class(a)
attr(a, "mynumattr")


##**** Class of an object ****##
## The class of an object is what allows R to
## implement the object oriented behavior.
## When a general function, such as print(),
## receives one object, it inspects
## its class, and calls the appropriate method to
## print it in the best way, or uses a default method
## if there is no specific handler for it.
## If you go back you will notice that "a" was printed
## differently, depending on the class
## (first "numeric", then "matrix", and then "array").


##**** Factors ****##
color <- c("green", "orange", "green", "green", "orange", "green", "green", "green", "orange",
           "orange", "orange", "orange", "green", "green", "green", "orange", "green", "orange")
(colorf <- factor(color)) ## Default order is alphabetical
unique(sort(color))        ## This is the default behavior
str(colorf)
levels(colorf)
summary(colorf)
## You can specify the desired order of factors
str(factor(color, levels = c("green", "orange")))
factor(as.character(colorf[colorf == "orange"]))


##**** Ordered Factors ****##
pos <- c("mi", "lo", "hi", "hi", "mi", "mi", "lo", "hi", "lo",
         "lo", "lo", "mi", "lo", "hi", "mi", "hi", "hi", "mi")
(posf <- ordered(pos)) ## Default order is alphabetical
unique(sort(pos))        ## This is the default behavior
str(posf)
levels(posf)
summary(posf)
## You can specify the desired order of factors
str(ordered(pos, levels = c("lo", "mi", "hi")))
