[<< back](../README.md)

# Convolution

Another important point related to Fourier transform is convolution. Convolution takes
two mathematical functions as an input and returns a mathematical function as the output.
Mathematically it is:

You can imagine convolution as taking of function *f* and *g* and moving the function
*g* horizontally by *t* (*g*(*x*-*t*) is *g*(*x*) moved horizontally by value of *t*) and 
plotting integral for each value of *t*. Let us try with ...

The reason why convolution is important in Fourier transform is that Fourier transform
of product of two functions is eqal to convolution of Fourier transforms of individual
functions. For example in NMR the signal is formed by waves with exponantial decay.
The signal is most intensive right after excitation and it decays with time bacause
nuclei are returning back to equilibria. The signal is thus a product of a sine wave
and exponential. Fourier transform of such function is therefore a convolution of
Fourier transforms of these functions. Fourier transform of sine waves gives a delta
function -- infinitly high and infinitely narrow peak with area equal to 1 and 
centered in the frequency of the sine wave. Fourier transform of exponential gives
a Lorenzian function. It is a bell-shaped function similar to Gaussian functions.
Convolution gives and exactly same Lorenzian fuction, but instead of zero it is centered
in the value of frequency of the sine wave. This is the reason why NMR peaks are
bell-shaped functions centered in the frequency.

Another application of convolution is crystallography, where 

Convolution and deconvolution can be used in other areas. Artificial neuronal networks
are used in a wide range of applications. For example it can read hand-written zip
codes on evelopes. Since zip codes are written in pre-preinted boxes, it is possible
to use usual neural network. But if zip codes are not written in pre-printed boxes
or a neural network should for example recognize trafic signs in order to drive
an autonomous cars it is necessary to recognize object anywhere in a large visual
field. Thanks to convolution, convolutional neuronal networks do this job.

