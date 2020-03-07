load('matrixAs.mat')
d=10;
mu=zeros(d,1);
sigma=eye(d);
eps=0.05;

xii_=mvnrnd(zeros(d,1),eye(d),5000)';
% save('dataset1_n10.mat')
% save('dataset2_n10.mat')
% save('dataset3_n10.mat')
% save('dataset4_n10.mat')
% save('dataset5_n10.mat')
% save('dataset6_n10.mat')
% save('dataset7_n10.mat')
% save('dataset8_n10.mat')
% save('dataset9_n10.mat')
save('dataset10_n10.mat')

