confidence_interval <- function(value) {
  m <- mean(value)
  s <- sd(value)
  n <- length(value)
  return(c(m - 1.96 * s / sqrt(n), m + 1.96 * s / sqrt(n)))
}

set.seed(1234)

x <- rnorm(100)
y <- rnorm(100)
z <- rnorm(100)
v <- z^2

confidence_interval(x)
confidence_interval(y)
confidence_interval(z)
confidence_interval(v)
