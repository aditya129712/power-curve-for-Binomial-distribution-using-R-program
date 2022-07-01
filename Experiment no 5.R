#Programming in R
library('ggplot2')
k_one=qbinom(0.7365,20,1/2)
k_one
k_two=qbinom(0.2635,20,1/2)
k_two
k_three=k_two+1
k_three
theta=seq(from=0.21, by=0.02, length.out=40)
power=mat.or.vec(40,1)
for(i in 1:40){
  power[i]=pbinom(9,20,theta[i])+1-pbinom(11,20,theta[i])}
power
Table=data.frame(theta,power)
Table
View(Table)
ggplot(data=Table,mapping=aes(x=theta,y=power))+geom_point()+geom_line()
data.frame(theta)
data.frame(power)
