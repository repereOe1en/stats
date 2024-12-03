#10. * Построить столбцовую диаграмму для биномиального 
#распределения с возможностью менять параметры ползунками.
options(warn=-1)
library(ggplot2)
library(manipulate)

plotss<-function(n,p){
  plot(c(1:n),dbinom(c(1:n),size=n,p),type='h')
}

uppern=readline("ВВЕДИТЕ ВЕРХНЮЮ ГРАНИЦУ N ")
manipulate(plotss(n,p),n=slider(min=1,max=strtoi(uppern),step=1),p=slider(min=0,max=1))

