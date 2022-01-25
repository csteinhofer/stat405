## -----------------------------------------------------------------------------
## *********** Flipped class problems for script 04
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## **** Descriptive statistics functions
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## ** Using `father.son` dataset
library(UsingR)
data(father.son)
##    concentrate on father's heigh.
x <- father.son$fheight
##    The function `summary` provides a series of summary statistics.
summary(x)
##    Investigate and find the individual functions that allow to
##    find the 6 values. Return them with the same number of significant
##    digits as the summary function


## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## ** Implement your own versions of `mean`, `var`, `sd` and `median`.
##    For the median, keep in mind it has to work correctly both for odd
##    and even number of elements.
##    Verify with the stock functions for correctness.


## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## **** Data science (analysis) using Base R tools
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## ** Analyze the Chick Weight data provided by R, that can be invoked as
data("ChickWeight")
##    1) Inspect it (`str`, `summary`, `View`, see the help) until you form
##       a mental picture of it. Note the type of data of each column,
##       considering if some of the could be a potential problem if not
##       treating with care.
##    2) Determine how many chicks were checked at each `Time`. Create a
##       visualization (in this and all visualizations create proper labels
##       and titles.
##    3) Plot, in different colors, the trajectories of the weights of chicks
##       15, 20 and 27. Make sure all info is shown. Put a legend to identify
##       to which chick each line corresponds.
##    4) (Intermediate) Generalize 3) so you plot the trajectories of all the
##       chicks. One approach would be to use a for loop (seen in near future).
##       Another is to use `sapply` (you can use `invisible` to silence the
##       returned values. Here, a legend will be too involved.
##    5) (Intermediate) Same as 4) but color according to Diet.
##    6) Perform an ANOVA to conclude if there is a difference in the means
##       by Diet of the difference of weight between time 0 and 21 (only
##       consider chicks that have a weight at time 21...)


## * Begin solution
## * End solution


## -----------------------------------------------------------------------------
## **** Optimization (extra material)
## -----------------------------------------------------------------------------


## -----------------------------------------------------------------------------
## ** (Intermediate) You are asked to solve the regression problem of father.son
##    data but using optimization. Fortunately, R offers different options.
##    Using `optim` (see help) implement an optimization that will perform OLS
##    (ordinary least squares) in an algorithmical way. Even if one can derive
##    the exact expressions for beta0hat and beta1hat, it is good to know how
##    to have this kind of alternative handy for those cases where you cannot
##    find a close form solution. In other words, you want to find the values
##    of the parameters that minimize the sum of squared errors (residuals...).
##


## * Begin solution
## * End solution
