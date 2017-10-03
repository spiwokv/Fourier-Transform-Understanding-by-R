# Fourier Transform: Understanding by R

## Basic R

You can use R just like a calculator:

```R
1+1
```

Numbers and results of arithmetic operations can be stored in variables using `<-` symbol:

```R
x<-1
x
y<-1+1
y
```

Vectors can be created by `c()` function:

```R
x<-c(1,3,2,3,4,5)
x
```

This function can be also used to add an element to a vector or to join two vectors:

```R
x<-c(1,3,2,3,4,5)
x
x<-c(x,6)
x
x<-c(x,x)
x
```

It is possible to add, subtract, multiply or divide a vector by constant:

```R
x<-c(1,3,2,3,4,5)
x+1
2*x
```

Two vectors of same lengths can be added, subtracted, multiplied or divided (last two are element-wise operations):

```R
x<-c(1,2,3)
y<-c(3,1,1)
x+y
x-y
x*y
```

Functions can be applied as well:

```R
x<-c(1,2,3)
sin(x)
```

It is possible to create a simple series vector by `start:end`:

```R
x<-1:10
```

Finally, you can use plot function to make a simple plot:

```R
x<-0:100/10
y<-sin(x)
plot(x,y) # for points
plot(x,y, type=”l”) # for lines
```

or it is possible to add lines to existing plot:

```R
plot(x,y) # for points, do not close the window of the plot!!!
lines(x,y) # for lines
```

In R you can also do programming like for-cycles:

```R
for(i in 1:100) {
  print(i)
}
```

More info can be found at www.r-project.org, here https://github.com/spiwokv/Rtutorial or in many books.

## Continuous Fourier Transform in 1D

Let's have a simple sine wave for x from 0 to 10:

```R
x<-0:1000/100
y1<-sin(2*pi*x)
plot(x,y1, type="l")
```

This sine wave (it could be for example a sound wave, i.e. pure tone) has frequency equal to 1. It is possible to make another sine wave of frequency 1.122324 (it could be another tone, 1.122324 is the ratio of frequencies of tones D and C):

```R
y2<-sin(2*pi*1.122324*x)
plot(x,y2, type="l")
```

It is possible to sum both sine waves (analogous to pressing keys C and D on a keyboard) and plot them:

```R
y<-y1+y2
plot(x, y, type="l")
```

Now let's try to decompose this mixture of tones. For this we will look at a product of two sine wave, for example y1 and y2:

```R
plot(x,y1*y2, type="l")
```

You can see that the product is a periodic function (not simply a sine wave). Most interestingly, the function contains repeating parts, where one part is like a mirror image of another part (e.g. 0-8 and 4-12 in this plot, you must imagine 10-12). If you sum values of `y1*y2`:

```R
sum(y1*y2)
```

You get reasonably low number (60.44577). You can try different frequencies and you should observe a similar trend. The only exception is when both frequencies become close to each other or same:

```R
plot(x,y1*y1, type="l")
sum(y1*y1)
```

This is because product of two same sine waves (or square of sine waves) is always positive. A product of two sine waves of different frequencies alternates between negative and positive parts and these prats cancel out each other in the sum.

You can try to make an vector of frequencies `f` and empty vector `F` and to fill `F` by `sum(y1*sin(2*pi*f*x))`:

```R
f<-1:200/100
F<-c()
for(ff in f) {
  F<-c(F,sum(y1*sin(2*pi*ff*x)))
}
plot(f,F, type="l")
```

You should get a peak at `f` = 1. You can try for `y2`:

```R
f<-1:200/100
F<-c()
for(ff in f) {
  F<-c(F,sum(y2*sin(2*pi*ff*x)))
}
plot(f,F, type="l")
```

You get a peak at `f` approx. 1.2. Finally try with `y`:

```R
f<-1:200/100
F<-c()
for(ff in f) {
  F<-c(F,sum(y*sin(2*pi*ff*x)))
}
plot(f,F, type="l")
```

You get two peaks at approx. 1 and 1.2. The height of a peak gives you a content of a sine wave of frequency `f` in waves `y1`, `y2` and `y`. When the frequency in e.g. `y` is close to some `f`, the product of sine waves becomes always positive and its sum becomes high. When the frequency `f` is absent in `y`, the product of sine waves alternates between positive and negative, which cancel each other, and its sum becomes low. 



Mathematically speaking, XXXXX

## Discrete Fourier Transform in 1D

Let us make a 1D picture of a car:

