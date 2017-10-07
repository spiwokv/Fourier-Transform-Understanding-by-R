# Discrete Fourier Transform in 1D

Let us make a 1D picture of a car:

```R
x<-0:79
y<-c(0,0,0,0,1,1,1.5,2,2,2,2,2,2,2,1.5,1,0.5,0,0,0)
y<-rep(y,times=4)
plot(x,y)
lines(x,y)
```

```R
xt<-2*pi*x/80
```

```R
plot(x,y)
lines(x,y)
lines(x,sin(xt), col="red")
points(x,y*sin(xt), col="blue")
lines(x,y*sin(xt), col="blue")
```

```R
sum(y*sin(xt))
```

```R
plot(x,y)
lines(x,y)
lines(x,sin(2*xt), col="red")
points(x,y*sin(2*xt), col="blue")
lines(x,y*sin(2*xt), col="blue")
```

```R
sum(y*sin(2*xt))
```

```R
plot(x,y)
lines(x,y)
lines(x,sin(3*xt), col="red")
points(x,y*sin(3*xt), col="blue")
lines(x,y*sin(3*xt), col="blue")
```

```R
sum(y*sin(3*xt))
```

```R
plot(x,y)
lines(x,y)
lines(x,sin(4*xt), col="red")
points(x,y*sin(4*xt), col="blue")
lines(x,y*sin(4*xt), col="blue")
```

```R
sum(y*sin(4*xt))
```

```R
f1<-c()
f2<-c()
for(i in 0:79) {
  f1<-c(f1,sum(y*cos(i*xt))/80)
  f2<-c(f2,sum(y*sin(i*xt))/80)
}
```

```R
ynew<-rep(0,80)
for(i in 0:79) {
  ynew<-ynew+f1[i+1]*cos(i*xt)
  ynew<-ynew+f2[i+1]*sin(i*xt)
}
```

```R
plot(x,ynew)
plot(x,f1)
plot(x,f2)
```

