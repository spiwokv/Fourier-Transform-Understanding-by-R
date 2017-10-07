# Discrete Fourier Transform in 1D

Let us make a 1D picture of a car:

```R
x<-0:19
y<-c(0,0,0,0,1,1,1.5,2,2,2,2,2,2,2,1.5,1,0.5,0,0,0)
plot(x,y)
lines(x,y)
```

where car wheels are at x = 5 and 15, front window at 5-7 and rear window at 13-17.
This shape can be transformed by Fourier transform as a sum of wawes with different
frequencies, amplitudes and phases. It can be shown that this shape can be expressed
as a sum of sine and cosine waves with wave lengths equal to range of data, its 1/2,
1/3, 1/4 etc.

Let us try with wave length equal to range of data:

```R
plot(x,y)
lines(x,y)
lines(x,sin(2*pi*x/20), col="red")
points(x,y*sin(2*pi*x/20), col="blue")
lines(x,y*sin(2*pi*x/20), col="blue")
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

