# Basic R

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

