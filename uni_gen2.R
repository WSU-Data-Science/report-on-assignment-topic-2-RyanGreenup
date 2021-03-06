# Inverse Sigmoid ............................................

runif(100, 0, 1)
inverse_sigmoid <- function(x) {
  if (x < 0 || x >= 1) {
    stop("Values must be in [0,1)")
  }
    log(x/(1-x))
}
sigmoid <- function(x) {
    1/(1+exp(-x))
}


unif_vals = runif(100, 0, 1) 
unif_vals


inverse_sigmoid(99)




#  Probability from a normal distribution.....................
x <- rnorm(1000)
hist(x)

# Sample from 300  x
s <- sample(x = x, size = 300, replace = )


s <- rnorm(3000)

layout(matrix(1:2, nrow = 2))
hist(s)
hist(pnorm(s))


x <- rnorm(10)

data.frame("norm" = x, "prob" = pnorm(x))


hist(inverse_sigmoid(seq(from = 0, to = 0.999, length.out = 100)))

