## -----------------------------------------------------------------------------
## *********** Flipped class problems for script 03
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## **** Matrices
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## ** Given two equaly sized numerical vectors, implement
##    a cross product (vectorial product) function
##    of two numerical vectors of dimension 3. Call it `cross_product`
##    Hint: use cofactor expansion (and function `det`)
##          (see https://en.wikipedia.org/wiki/Cross_product#Matrix_notation)
##    Verify with function `cross` of library `pracma`
##    Apply to example given below
a <- c(3, -4, 12)
b <- c(-3, 2, 5)


## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## ** Using function `solve`, 
##    1) solve the following system of equations:
##       2a - 3b + 5c + d = -41
##       7a + 2b - c = -28
##       -a + 2b -7c -2d = 46
##       3a + 7b - 6c + d = 31
##    2) Find the inverse of the matrix of coefficients and use it to solve
##       the system, solving Ax = b for x.
##    3) (Advanced) Program a Gaussian elimination method.

## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## ** Using the matrix of coefficients from previous problem,
##    use `eigen` to perform an eigen decomposition of A.
##    Then, by looking at
##    https://en.wikipedia.org/wiki/Eigendecomposition_of_a_matrix#Eigendecomposition_of_a_matrix
##    recover A from executing the factorization.
##    Important: your final result must look exactly like the original A. Make as many conversions
##               as necessary to achieve it.


## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## ** The document
##    https://web.stanford.edu/~mrosenfe/soc_meth_proj3/matrix_OLS_NYU_notes.pdf
##    illustrates how to perform Ordinary Least Squares (OLS) to find the
##    estimates of the parameters of a regression model in matrix form.
##    Using the `father.son` data already seen in 02-flippled_class_problems.R,
library(UsingR)
data(father.son)
##    implement the methodology and find the intercept and
##    slope of the fitted regression line (x is father's height,
##    y is son's height).
##    Plot the scatterplot with the fitted regression line.
##    Verify the results  coincide with the results given by `lm` and
##    also by the formulas for single linear regression given in
##    https://en.wikipedia.org/wiki/Simple_linear_regression#Fitting_the_regression_line


## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## **** Lists
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## ** Perform a linear model analysis (regression) on father.son
(lmfs <- lm(sheight ~ fheight, data = father.son))
(slmfs <- summary(lmfs))
(anlmfs <- anova(lmfs))
##    and do the following
##    1) Extract the coefficients of the regression line from `lmfs`,
##       and using those extracted coefficients add the regression line (in red)
##       to the scatterplot. Hint: use function `abline` (see help)
##    2) Plot the father heights on x and the residuals in y.
##       Add a horizontal line at 0.
##    3) Extract the `fstatistic` from `slmfs` and perform the calculation to
##       obtain the p-value of the anova of the regression, i.e.,
##       the line that says: 
##       `F-statistic: 361.2 on 1 and 1076 DF,  p-value: < 2.2e-16`.
##       (Hint: use the function `pf` that gives you the
##              cumulative probability of an F distribution).
##    4) Extract the p-value directly from `anlmfs`.
                              
                              
## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## **** Data frames
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## ** Make sure you have the library ggplot2 installed
##    If not, install it by running the uncommented code below
##    install.packages("ggplot2")
##    Load the library
library(ggplot2)
##    Activate the mpg data.frame provided by ggplot2
data(mpg)
mpg <- as.data.frame(mpg)
## New versions of ggplot have all character variables, while
## older had factors. Transform manufacturer to factor
## to show how most data.frames treat character variables
mpg$manufacturer <- factor(mpg$manufacturer)
str(mpg)

## Do the following:
## 1) Inspect the structure of mpg data.frame.
##    Note the kind of data provided

## 2) Run the summary function to learn more
##    about the variables

## 3) Get a subset of the data.frame including all
##    cars that are not ford nor audi

## 4) Determine if the manufacturer variable (that is a factor)
##    in your subset has or not dropped the now removed
##    manufacurers audi and ford

## 5) Devise a strategy to assure that the above factor has dropped
##    the levels that have no elements

## 6) Further subset the data making sure that only front drive
##    midsize cars model 2008 with at least 20 highway
##    or city miles per gallon are included.

## 7) Determine how many cars per manufacturer satisfy
##    these constraints. Only show manufacturers with
##    at least one vehicle.

## 8) Only show the case(s) with more cars
## Note: there might be ties...


## * Begin solution
## * End solution
