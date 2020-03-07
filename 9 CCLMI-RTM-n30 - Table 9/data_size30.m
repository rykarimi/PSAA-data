clc; clear all;
load('matrixAs_3.mat')
d=30;
mu=zeros(d,1);
sigma=eye(d);
eps=0.05;

xii_=mvnrnd(zeros(d,1),eye(d),5000)';
% save('results\dataset1_n30.mat')
% save('results\dataset2_n30.mat')
% save('results\dataset3_n30.mat')
% save('results\dataset4_n30.mat')
% save('results\dataset5_n30.mat')
% save('results\dataset6_n30.mat')
% save('results\dataset7_n30.mat')
% save('results\dataset8_n30.mat')
% save('results\dataset9_n30.mat')
save('results\dataset10_n30.mat')

