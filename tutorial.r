#4
#$R
q()
getwd()
setwd()
help.start()
?plot()
plot(
help(plot)
example(mean)
ls()
object()
rm()
install.packages('vioplot')
library(vioplot)
#R CMD INSTALL 

#5
class(x)
mode(x)
dim(x) #matrix and data.frame
length(x) #vector and list

#6
read.table('dihedral.txt')->dihe
print(class(dihe)) #clss of the object
print(dim(dihe)) #dimension of data.frame
read.csv('dihedral2.txt')->dihe_irre
dim(dihe_irre) #for each row, only 1 vector
save(dihe,file='dihe')
load('dihe')
write.table(dihe,file='dihe.txt')
png('dihe.png')
plot(dihe)
dev.off()
###generate data
x<-1:30 
seq(from=1,to=5,by=0.5)
rep(c(1,2,3),10)
sequence(4:5)
gl(3,5)
expand.grid(h=c(60,80),w=c(100,300),sex=c('Male','Female'))
x<-c()
x<-list()
x<-data.frame()
x<-matrix()

#7
rnorm(100,0,1)->x

#8
plot(x) 
barplot(x)
pie(x) 
hist(x)
pdf() 
png() 
plot(x,col='red',pch=15)
dev.off()

#9
1+3+3
1736-2387
23*59
133/45
133%/%45
133%%45 
2^3
exp(10)
mean(x)
median(x)
sd(x)
var(x)
sqrt(16)
max(x)
min(x)
rnorm(100,0,1)->y
cor(x,y)

#11
rnorm(100,2,1)->x    
hist(x,prob=T)  
lines(density(x),type=T,col=2)
rnorm(100,2,1)->y
t.test(x,y)->result.t
attributes(result.t)
result.t$p.value

#12
x=c(35.5, 34.1, 31.7, 40.3, 36.8, 40.2, 31.7, 39.2, 44.2)
y=c(12, 16, 9, 2, 7, 3, 13, 9, -1)
plot(x, y)
lm(y~x)
abline(lm(y~x))
anova(lm(y~x))
lm(y~x+0) #y=ax

#13
x1=c(26.7, 31.3, 30.4, 33.9, 34.6, 33.8, 30.4, 27.0, 33.3, 30.4, 31.5, 33.1, 34.0) 
x2=c(73.4, 59.0, 65.9, 58.2, 64.6, 64.6,62.4, 74.4, 64.5, 64.1, 61.1, 56.0, 59.8)
y=c(1008, 959, 1051, 1022, 1097, 1103, 992, 945, 1074, 1029, 1004, 995, 1045)
lm(y~x1+x2)

#14
library(ISwR)
attach(cystfibr)
pemax
height
summary(lm(pemax~height+I(height^2)))
lm(pemax~height+I(height^2))->lm_multi
lm_multi$coefficients->coeff
coeff[1]->c
coeff[2]->a
coeff[3]->b
plot(height,pemax)
fit.f<-function(x){
	a*x+b*(x^2)+c
}
plot(fit.f,min(height),max(height),add=T)
anova(lm(pemax~height+I(height^2)))

#19
weight=c(0.029, 0.052, 0.079, 0.125, 0.181, 0.261, 0.425, 0.738, 1.130, 1.882, 2.812)
age=6:16
plot(age, weight)
output=summary(lm(log(weight)~age))
A=exp(output$coefficients[1,1])
b=output$coefficients[2,1]
fit.f=function(x){A*exp(b*x)}
plot(fit.f,6,16,add=T)

#21
nls(weight~A*exp(b*age), start=c(A=1,b=1))
fit.f=function(x){A*exp(b*x)}
plot(fit.f,6,16,add=T,col='red')

#22
plot_dihe<-function(x){
plot(x)
}
load('dihe_all')
pdf('plot.pdf')
apply(dihe_all,1,plot_dihe)
dev.off()



