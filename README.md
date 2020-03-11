# PSAA-data

The available data and results in this project are the exact data used in the paper named "A Framework for Solving Chance-Constrained Linear Matrix Inequality Programs" submitted to "INFORMS Journal on Computing".


The data and results corresponding to each Table 1-9 is stored in a seperate folder indicated by Table number in the paper, each including ten randomly generated datasets in ".mat" file format 

Tables 1-6 compare the performances of different methods for solving the CCLMI-RHS problem using different settings of data and eigenvalue generation functions which are detailed inside each folder. In our experiments, we consider various numbers of scenarios N, including N* = 2253 obtained from Theorem 1 using \beta = 0.05. Moreover, we choose ten segments for the piecewise linear approximations in the interval [-4,4]. The reliability parameter is set to p = 95% in all of the experiments, and we use 100,000 testing samples to calculate the empirical probability.

Tables 7-9 compare the performances of different methods for solving the CCLMI-RTM problem. We consider three different sizes for the matrices A0,A1,...,An by setting d=n={10,20,30}. We set A0 = Id  wherein Id is the identity matrix of size d× d and we randomly generate symmetric matrices A1,...,An . We scale the generated matrices to ensure that Arrow(\vartheta Id,A1,...,An ) is PSD if and only if \vartheta >= 1; therefore, the input to the calibration procedure is the collection A0 = Id, A1,...,An ; \vartheta = 1.
We assume that the random vector \xi = (\xi_1,...,\xi_n) follows a standard normal distribution N (0; I). 

