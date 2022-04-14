x <- 1.3
x^2+3*x+1

x <- 30
sin(pi*x/180)

x <- 1
atan(x)

x <- sqrt(3)/2
sin(acos(x))

x <- pi/3
y <- pi/6
abs(x)*sin(x^2)
abs(y)*sin(y^2)

sin(pi/2)
cos(pi/3)
tan(pi*60/180)
x <- 1/2
y <- 1
log(x+sqrt(x^2+1))
log(y+sqrt(y^2+1))
z <- pi/4
w <- pi/2
z/((z^2+1)*sin(z))
w/((w^2+1)*sin(w))

x <- 0.3
round(x) # Return closest integer that is not more than x
ceiling(x) # Return smallest integer that is not less than x
floor(x) # Return largest integer that is not more than x
trunc(x) # Return value without decimals

library(pracma)
n <- 3
m <- 4
# These functions are in package, pracma
rem(n,m) # rem=n-m*trunc(n/m)
mod(n,m) # rem=n-m*floor(n/m)

x <- seq(1,2,0.1)
x^3+3*x^2+1
sin(x^2)
(sin(x))^2
sin(2*x)+x*cos(4*x)
x/(x^2+1)
cos(x)/(1+sin(x))
1/x+x^3/(x^4+5*x*sin(x))
# seq(1,2,0.1)=seq(1,2,l=11)

x <- seq(3,5,0.01)
y=x/(x+(1/x^2))

x <- seq(-2,-1,0.1)
1/x^3+1/x^2+3/x

rm(list=ls())
x <- seq(0,1,l=200)
g <- x^3+1
h <- x+2
z <- x^2
y <- cos(pi*x)
f <- (z*y)/(g*h)
f[200]

library(pracma)
x <- seq(-2,2,l=21)
coef <- c(1,0,0,0,-1) #Coef shows coefficients of function y in future
y <- polyval(coef,x) 
plot(y,x)

x <- seq(0,3,0.1)
f <- x^3*cos(x+1)
f[21] # Value for x=2
tail(f,1) #Value for x=3, tail(f,n) returns n values from last of data