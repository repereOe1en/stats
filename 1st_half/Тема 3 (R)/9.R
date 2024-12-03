#9. * Решить задачу 1 с возможностью изменения n ползунком.
options(warn=-1)
library(ggplot2)
library(manipulate)

plotss<-function(n){
  l=0
  l[1]=curve(dnorm(x,0,1),-15,15,col=1,ylab='y')
  if (n>1){
    for (i in 2:n){
      l[i]=curve(dnorm(x,0,i),-15,15,col=i,add=TRUE)
    }
  }
  names=0
  for (i in 1:n){
    names[i]<-paste("N(0,",as.character(i),")",sep="")
  }
  colours=0
  colours[1:n]=1:n
  legend(3,0.4,legend=names,fill=colours)
}
uppern=readline("uppern= ")
manipulate(plotss(k),k=slider(min=1,max=strtoi(uppern)))
