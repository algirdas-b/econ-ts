n <- 1000
nu <- rnorm(n)
eps <- c(0, rep(NA, n))
for (i in 2:(n+1)) {
  eps[i] <- nu[i-1]*(1 + 0.8*eps[i-1]^2)^0.5
}
Eps <- eps[-1]
# ts.plot(Eps)
x <- c(0, rep(NA, n))
for (i in 2:(n+1)) {
  x[i] <- 0.8*x[i-1] + eps[i]
}
X <- x[-1]
# ts.plot(X)
y <- c(0, rep(NA, n))
for (i in 2:(n+1)) {
  y[i] <- 0.5*y[i-1] + eps[i]
}
Y <- y[-1]
# ts.plot(Y)
z <- c(0, rep(NA, n))
for (i in 2:(n+1)) {
  z[i] <- 0.2*z[i-1] + eps[i]
}
Z <- z[-1]
# ts.plot(Z)
plot.ts(cbind(Eps, X, Y, Z))
