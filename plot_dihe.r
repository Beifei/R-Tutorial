pdf('dihe_all.pdf',height=5)

library('vioplot')
load('dihe_all')
#dim(dihe_all)=20000 10
#2000x10 frames
#5x2 5x1 5x1


####dihedral_all########
layout(matrix(1:4,byrow=T,ncol=2))
par(mar=c(3,5,2,2))

color=c('black','red','yellow','blue','green')
c(expression(chi*""[1]),expression(chi*""[2]),expression(chi*""[3]),expression(chi*""[1]*"'"),expression(chi*""[2]*"'"))->chiname

plot(density(dihe_all[,1],n=1000,from=-180,to=180),ylim=c(0,0.04),main='',xlab='Dihedral angles (degree)',ylab='density',lwd=2)
for (i in 2:5){
    points(density(dihe_all[,i],n=1000,from=-180,to=180),col=color[i],type='l',lwd=2)
    }   
legend(-100,0.04,lty=1,col=color,legend=chiname,cex=0.8)

plot(density(dihe_all[,6],n=1000,from=-180,to=180),ylim=c(0,0.06),main='',xlab='Dihedral angles (degree)',ylab='density',lwd=2)
j=1
for (i in 7:10){
    j=j+1
    points(density(dihe_all[,i],n=1000,from=-180,to=180),col=color[j],type='l',lwd=2)
    }   

plot(density(dihe_all[,11],n=1000,from=-180,to=180),ylim=c(0,0.06),main='',xlab='Dihedral angles (degree)',ylab='density',lwd=2)
j=1
for (i in 12:15){
    j=j+1
    points(density(dihe_all[,i],n=1000,from=-180,to=180),col=color[j],type='l',lwd=2)
    }   

plot(density(dihe_all[,16],n=1000,from=-180,to=180),ylim=c(0,0.06),main='',xlab='Dihedral angles (degree)',ylab='density',lwd=2)
j=1
for (i in 17:20){
    j=j+1
    points(density(dihe_all[,i],n=1000,from=-180,to=180),col=color[j],type='l',lwd=2)
    }   

dev.off()
