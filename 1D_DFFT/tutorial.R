x<-0:19
y<-c(0,0,0,0,1,1,1.5,2,2,2,2,2,2,2,1.5,1,0.5,0,0,0)
plot(x,y)
lines(x,y)

xt<-2*pi*x/20

plot(x,y)
lines(x,y)
lines(x,sin(xt), col="red")
points(x,y*sin(xt), col="blue")
lines(x,y*sin(xt), col="blue")

sum(y*sin(xt))

plot(x,y)
lines(x,y)
lines(x,sin(2*xt), col="red")
points(x,y*sin(2*xt), col="blue")
lines(x,y*sin(2*xt), col="blue")

sum(y*sin(2*xt))

plot(x,y)
lines(x,y)
lines(x,sin(3*xt), col="red")
points(x,y*sin(3*xt), col="blue")
lines(x,y*sin(3*xt), col="blue")

sum(y*sin(3*xt))

f1<-c()
f2<-c()
for(i in 0:19) {
  f1<-c(f1,sum(y*cos(i*xt))/20)
  f2<-c(f2,sum(y*sin(i*xt))/20)
}

ynew<-rep(0,20)
for(i in 0:19) {
  ynew<-ynew+f1[i+1]*cos(i*xt)
  ynew<-ynew+f2[i+1]*sin(i*xt)
}

plot(x,ynew)
plot(x,f1)
plot(x,f2)

