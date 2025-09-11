% Defines the advertisement problem
ad_prob = optimproblem('ObjectiveSense','maximize');

% Defines the decision variables (whether the add is displayed or not)
x = optimvar('x',5,'Type','integer','LowerBound',0,'UpperBound',1);

% Defines the column vector of corresponding profits
profit = [400;600;700;600;900];                 
ad_prob.Objective = profit.'*x;        

% Conflicting advertisment pairs
pairs = [1 2; 1 5; 3 5; 2 4; 3 4];

% loops through possible pairs, ensures MATLAB only picks a max of 1 ad per
% pair
constr = optimconstr(size(pairs,1),1);
for k = 1:size(pairs,1)
    i = pairs(k,1); j = pairs(k,2);
    constr(k) = x(i) + x(j) <= 1;
end
ad_prob.Constraints.conflicting_pairs = constr;

% Outputs resulting combination and profit
[sol,maxprofit,exitflag,output] = solve(ad_prob);

disp(['Maximum profit is: ' num2str(maxprofit)]);
disp('Advertisements chosen (indices):');
disp(find(round(sol.x)==1).');