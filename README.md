# Exploration of CLT
Showcasing the different properties of the Central Limit Theorem via MATLAB.
Each distribution contains samples from the random variable Zn which equals (X1+X2+...+Xn)/n where each X term/random variable is an identical, independent distribution (i.i.d). 

In the files titled uniform and primenumberbias, it is showcased how regardless of what distributions the i.i.d. random variables take, as n increases, the distribution will eventually converge into a Gaussian. 

For the file titled convolution, the exact PDF given a number of i.i.d. random variables is formed by iteratively convolving the previous output PDF (with the first iteration being a uniform PDF) with another uniform PDF.
