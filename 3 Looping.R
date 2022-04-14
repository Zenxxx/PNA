leftnr <- ""
rightnr <- ""

for(i in 1:9)
{
  leftnr <- paste(leftnr, i, sep="")
  rightnr <- paste(rightnr, 10-i, sep="")
  cat(sprintf('%s x 8 + %d = %s\n', leftnr, i, rightnr))
}


n <- 0
e_approx <- function(n)
{
  return(abs((1-1/n)^n-exp(-1)))
}
while(e_approx(n) >= 0.0001)
{
  n<-n+1
}

cat(sprintf('The build-in value of e^(-1) is %.4f\n',exp(-1)))
cat(sprintf('The approximation is %.4f\n',e_approx(n)))
cat(sprintf('The value for n is %d\n',n))


library(tictoc)
tic()
k<-1000
found<-FALSE
a<-0
maxa<-k
while( (a<maxa) & !found ){
  a<-a+1
  b<-0
  maxb<-k
  while( (b<maxb) & !found ){
    b<-b+1
    c<-0
    maxc<-k
    while( (c<maxc) & !found ){
      c<-c+1
      if( (a+b+c==k) & (a^2+b^2==c^2) ) {
        found<-TRUE
      }
    }
  }
}
cat("Solution:",a*b*c,"\n")
toc()


tic()
found<-FALSE
a<-0
maxa<-k %/%3
while( (a<maxa) & !found ){
  a<-a+1
  b<-a
  maxb<-(k-a) %/% 2
  while( (b<maxb) & !found ){
    b<-b+1
    c<-k-a-b
    if( (a+b+c==k) & (a^2+b^2==c^2) ) {
      found<-TRUE
    }
  }
}
cat("Solution:",a*b*c,"\n")
toc()


tic()
for( m in 501:1000 ){
  if( 500000 %% m==0){
    a<-1000-(500000 / m)
    b<-1000-m
    c<-1000-a-b
    break
  }
}
cat("Solution:",a*b*c,"\n")
toc()