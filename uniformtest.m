function X = uniformtest(A,P,m)

% UNIFORMTEST:  X = uniformtest(A,P,m)
%
% This runs a test for uniformity for the rank data profile P based on the 
% rows of the matrix A (i.e., the row space of A after removing the 
% all-ones space. In this case, m is the number of candidates being 
% ranked. The output is the estimated p-value followed by the computed 
% test statistic. 


n = sum(P);     % n is the number of people voting, m is the number of candidates

allones = ones(1,factorial(m));                     % the all-ones vector of length m!

B = ((eye(factorial(m)) - effproj(allones))*(A'))'; % A with the all-ones portion removed

PROJ = effproj(B)*((1/n)*P);                        % the projection of Phat

STAT = n*factorial(m)*PROJ'*PROJ;                   % the statistic we wanted

d = factorial(m) - size(null(B),2);                 % the degrees of freedom for our test

%1 - chi2cdf(STAT,d);                               % the p-value

X = [1 - chi2cdf(STAT,d); STAT];                    % the p-value and the test statistic

end

