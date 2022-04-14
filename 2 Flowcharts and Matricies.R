library(tictoc)

tic()

m <- 1000000
new <- 0
startnew <- 0 

for(n in 1:m)
{
  num <- 1
  start <- n
  while(n != 1)
  {
    if(n %% 2 ==0)
    {
      n <- n/2
    }
    else
    {
      n <- 3*n+1 
    }
    num <- num+1
  }
  if(new < num)
  {
    new <- num
    startnew <- start
  }
}
cat("Starting value ",startnew," takes ",new," steps.") 
toc()

tic()
x=matrix(c(1,0,0,0,1,1,0,1,0,0,0,0,0,1,1,0,1,0,1,0,0,0,1,0,1),
         5,5)
Neighbours<-function(x,i,j)
{
  living<-0
  if( (i-1)>0 & (j-1)>0 ) 
  {
    living<-living+x[i-1,j-1]
  }
  if( (i-1)>0 )
  {
    living<-living+x[i-1,j] 
  }
  if( (i-1)>0 & (j+1)<6 ) 
  {
    living<-living+x[i-1,j+1] 
  }
  if( (j-1)>0) 
  {
    living<-living+x[i,j-1]
  }
  if( (j+1)<6) 
  {
    living<-living+x[i,j+1]
  }
  if( (i+1)<6 & (j-1)>0 )
  {
    living<-living+x[i+1,j-1]
  }
  if( (i+1)<6) 
  {
    living<-living+x[i+1,j] 
  }
  if( (i+1)<6 & (j+1)<6 ) 
  {
    living<-living+x[i+1,j+1]
  }
  return(living) 
}
y <- matrix(0,5,5) 
for(i in 1:5)
{ 
  for(j in 1:5)
  { 
    if(x[i,j]==0)
    { 
      if(Neighbours(x,i,j)==3) 
      {
        y[i,j]<-1
      }
    } 
    if(x[i,j]==1)
    { 
      count <- Neighbours(x,i,j) 
      if((count==2) | (count==3)) 
      {
        y[i,j]<-1
      }
    }
  }
}
y
sum(y)
toc()