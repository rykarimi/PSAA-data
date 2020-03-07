% clc;clear all;
% n=30;
% d = 5*rand(n,1); % The diagonal values
%    t = triu(bsxfun(@min,d,d.').*rand(n),1); % The upper trianglar random values
%    M = diag(d)+t+t.' % Put them together in a symmetric matrix
% 
A0=eye(n); % Initial A_0
% 
% A=[];
% for i=1:n
%    d = 5*rand(n,1); % The diagonal values
%    t = triu(bsxfun(@min,d,d.').*rand(n),1); % The upper trianglar random values
%    M = diag(d)+t+t.'; % Put them together in a symmetric matrix
%    A(:,:,i)=M;
% end 



% gamma=1; % Initial gamma
gamma=164;



O=zeros(n,n);
% the generated matrices should be such that Arrow(gamma*A_0,A_1,...,A_n)
% be SDP
ARR=[gamma*A0 A(:,:,1) A(:,:,2) A(:,:,3) A(:,:,4) A(:,:,5) A(:,:,6) A(:,:,7) A(:,:,8) A(:,:,9) A(:,:,10) A(:,:,11) A(:,:,12) A(:,:,13) A(:,:,14) A(:,:,15) A(:,:,16) A(:,:,17) A(:,:,18) A(:,:,19) A(:,:,20) A(:,:,21) A(:,:,22) A(:,:,23) A(:,:,24) A(:,:,25) A(:,:,26) A(:,:,27) A(:,:,28) A(:,:,29) A(:,:,30)
    A(:,:,1) gamma*A0 O O O O O O O O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,2) O gamma*A0 O O O O O O O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,3) O O gamma*A0 O O O O O O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,4) O O O gamma*A0 O O O O O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,5) O O O O gamma*A0 O O O O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,6) O O O O O gamma*A0 O O O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,7) O O O O O O gamma*A0 O O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,8) O O O O O O O gamma*A0 O O O O O O O O O O O O O O O O O O O O O O
    A(:,:,9) O O O O O O O O gamma*A0 O O O O O O O O O O O O O O O O O O O O O
    A(:,:,10) O O O O O O O O O gamma*A0 O O O O O O O O O O O O O O O O O O O O
    A(:,:,11) O O O O O O O O O O gamma*A0 O O O O O O O O O O O O O O O O O O O 
    A(:,:,12) O O O O O O O O O O O gamma*A0 O O O O O O O O O O O O O O O O O O 
    A(:,:,13) O O O O O O O O O O O O gamma*A0 O O O O O O O O O O O O O O O O O
    A(:,:,14) O O O O O O O O O O O O O gamma*A0 O O O O O O O O O O O O O O O O 
    A(:,:,15) O O O O O O O O O O O O O O gamma*A0 O O O O O O O O O O O O O O O 
    A(:,:,16) O O O O O O O O O O O O O O O gamma*A0 O O O O O O O O O O O O O O 
    A(:,:,17) O O O O O O O O O O O O O O O O gamma*A0 O O O O O O O O O O O O O 
    A(:,:,18) O O O O O O O O O O O O O O O O O gamma*A0 O O O O O O O O O O O O 
    A(:,:,19) O O O O O O O O O O O O O O O O O O gamma*A0 O O O O O O O O O O O 
    A(:,:,20) O O O O O O O O O O O O O O O O O O O gamma*A0 O O O O O O O O O O 
    A(:,:,21) O O O O O O O O O O O O O O O O O O O O gamma*A0 O O O O O O O O O 
    A(:,:,22) O O O O O O O O O O O O O O O O O O O O O gamma*A0 O O O O O O O O  
    A(:,:,23) O O O O O O O O O O O O O O O O O O O O O O gamma*A0 O O O O O O O 
    A(:,:,24) O O O O O O O O O O O O O O O O O O O O O O O gamma*A0 O O O O O O  
    A(:,:,25) O O O O O O O O O O O O O O O O O O O O O O O O gamma*A0 O O O O O  
    A(:,:,26) O O O O O O O O O O O O O O O O O O O O O O O O O gamma*A0 O O O O  
    A(:,:,27) O O O O O O O O O O O O O O O O O O O O O O O O O O gamma*A0 O O O 
    A(:,:,28) O O O O O O O O O O O O O O O O O O O O O O O O O O O gamma*A0 O O 
    A(:,:,29) O O O O O O O O O O O O O O O O O O O O O O O O O O O O gamma*A0 O 
    A(:,:,30) O O O O O O O O O O O O O O O O O O O O O O O O O O O O O gamma*A0 
    ];

% checking if ARR is SDP, if not we change gamma
[~,p] = chol(ARR) % The CHOL function provides an optional second output argument "p" which is zero
% if the matrix is found to be positive definite. 
% If the input matrix is not positive definite, then "p" will be a positive integer 
% in this case, by changing gamma to 90, it became positive definite
A0=gamma*A0;

save('matrixAs_3.mat')