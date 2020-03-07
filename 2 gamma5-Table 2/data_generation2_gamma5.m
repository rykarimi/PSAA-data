%% Problem data
clc; clear all; close all;
eps=0.05;
M=1000;
% ---------------------------------------------------------------
m=20;
std=rand(m,1)*2+1; %standard deviation
SIG0=gallery('randcorr',m); %create a correlation matrix (positive definite)
[VV,DD]=eig(SIG0);% (eigendecompotion SIG0=VV*DD*VV)

for tt=1:m
    DD(tt,tt)=(exp(5/m*tt)-1)/(exp(5)-1); %replace the eigvenvalue: exponentially decrease (rate=5)
end

SIG0=VV*DD*VV';% new colloreation matrix
sigma=diag(std)*SIG0*diag(std); % new covariance matrix
% ---------------------------------------------------------------
xii_=mvnrnd(zeros(20,1),eye(20),5000)';
%  ------ Eigendecomposition of sigma(sigma=U*E*U^(-1)) --------
[SV,S] = eig(sigma); % SV: eigenvector, S: eigenvalue
% % -------  -------
xx_sigma=SV*S^(1/2)*xii_;
% ---------------------------------------------------------------
tau=1;
bi=1+4*rands(20,54);
f=ones(20,1);
%%
NN=[100 500 1000 2000];
TOC=[];
for i=1:length(NN)
    disp(i);
    N=NN(i);
    xi=xii_(:,1:N);
    xx=xx_sigma(:,1:N);
    k=eps*N;

    tic;[rho(i,1),t{i}(:,1)]=Scenario_truss(xx,N,tau,bi,f);TOC(i,1)=toc;
    tic;[rho(i,2),t{i}(:,2)]=PSAA_truss(N,tau,bi,f,xi,sigma,eps);TOC(i,2)=toc;
    tic;[rho(i,3),t{i}(:,3)]=SAA_truss(xx,N,tau,bi,f,k,M);TOC(i,3)=toc;  
end