ad_prob = optimproblem('ObjectiveSense','maximize');

x = optimvar('x',5,'Type','integer','LowerBound',0,'UpperBound',1);

profit = [4;6;7;6;9];                 
ad_prob.Objective = profit.'*x;        

pairs = [1 2; 1 5; 3 5; 2 4; 3 4];

constr = optimconstr(size(pairs,1),1);
for k = 1:size(pairs,1)
    i = pairs(k,1); j = pairs(k,2);
    constr(k) = x(i) + x(j) <= 1;
end
ad_prob.Constraints.conflicting_pairs = constr;

[sol,maxprofit,exitflag,output] = solve(ad_prob);

disp(['Maximum profit is: ' num2str(maxprofit)]);
disp('Advertisements chosen (indices):');
disp(find(round(sol.x)==1).');