[<< back](../README.md)

# Applications

Fourier transform can be applied in many fields of chemistry and life sciences.
In NMR and IR it is used to obtain spectra from the signal. The phase problem
in NMR is solved by phasing. Before the phasing the spectrum may contain correct
symmetric peaks in phase, negative (antiphase) peaks and assymetric peaks with
part of peak positive and part of peak negative. It is possible to manually or
mathematically tune the spectra in a way to obtain a nice spectrum with all
positive and symmetric peaks. We can show it in R. We will take a free induction
decay (FID) of with frequency 60.25. The term `exp(-0.001*t)` models the decay.

```R
t<-0:999
fid<-cos(2*pi*60.25*t/1000)*exp(-0.001*t)
plot(t, fid, type="l")
f1<-c()
f2<-c()
for(i in 0:100) {
  f1<-c(f1, sum(fid*cos(2*pi*i*t/1000))/1000)
  f2<-c(f2, sum(fid*sin(2*pi*i*t/1000))/1000)
}
plot(0:100, f1, type="l")
plot(0:100, f2, type="l")
```

Because we sample the signal by integral vales of frequency and 60.25 is
non-integral we obtain spectra out of phase, both if scanned by sine (`f1`)
or cosine (`f2`) wave.

```R
plot(0:100, sqrt(f1*f1+f2*f2), type="l")
```

We can solve this by sumation of squares of `f1` and `f2` in so called
power spectra. Or we can phase our spectra by chosing an angle &omega;
and calculating `sin(omega)*f1+cos(omega)*f2`. Setting &omega; to 0.1 does
not lead to properly phased spectrum.

```R
omega<-0.1*2*pi
plot(0:100, sin(omega)*f1+cos(omega)*f2, type="l")
```

But &omega; equal to 0.2 gives good spectrum.

```R
omega<-0.2*2*pi
plot(0:100, sin(omega)*f1+cos(omega)*f2, type="l")
```

Before NMR experiment it is possible to do the same job by hardware or software
operations. Advantage of phasing compared to power spectra is in the fact that
peaks in phased spectra are more narrow than peaks in power spactra.

