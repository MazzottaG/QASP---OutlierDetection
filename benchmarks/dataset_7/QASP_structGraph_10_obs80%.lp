%@exists

%program_c1
c1(down(X)) :- c1(computer(X)), not c1(predecessortUp(X)), X!=0.
c1(predecessortUp(X)) :- c1(wired(Y,X)), c1(up(Y)).
c1(up(X)):- c1(computer(X)), not c1(down(X)).
c1(computer(0)).
c1(computer(1)).
c1(computer(2)).
c1(computer(3)).
c1(computer(4)).
c1(computer(5)).
c1(computer(6)).
c1(computer(7)).
c1(computer(8)).
c1(computer(9)).
c1(wired(0,1)).
c1(wired(5,8)).
c1(wired(0,3)).
c1(wired(1,4)).
c1(wired(5,7)).
c1(wired(7,9)).
c1(wired(0,2)).
c1(wired(4,5)).
c1(wired(8,9)).
c1(wired(5,6)).
c1(wired(2,5)).
c1(wired(6,9)).
c1(wired(3,5)).
c1(up(0)).


%observations
obs(up(9)).
obs(up(7)).
obs(up(1)).
obs(up(3)).
obs(down(6)).
obs(down(2)).
obs(down(5)).


%%% outlier and witness guessing
{o(X):obs(X)}.
{w(X):obs(X),not o(X)}.


%P(p)_w.
c1(X) :- not w(X), obs(X).

bad_c1 :- w(X), c1(X).
    

%%%%%%%%%%%%%%%%%%%%%%%%%%    
%@forall   

%program_c2
c2(down(X)) :- c2(computer(X)), not c2(predecessortUp(X)), X!=0.
c2(predecessortUp(X)) :- c2(wired(Y,X)), c2(up(Y)).
c2(up(X)):- c2(computer(X)), not c2(down(X)).
c2(computer(0)).
c2(computer(1)).
c2(computer(2)).
c2(computer(3)).
c2(computer(4)).
c2(computer(5)).
c2(computer(6)).
c2(computer(7)).
c2(computer(8)).
c2(computer(9)).
c2(wired(0,1)).
c2(wired(5,8)).
c2(wired(0,3)).
c2(wired(1,4)).
c2(wired(5,7)).
c2(wired(7,9)).
c2(wired(0,2)).
c2(wired(4,5)).
c2(wired(8,9)).
c2(wired(5,6)).
c2(wired(2,5)).
c2(wired(6,9)).
c2(wired(3,5)).
c2(up(0)).


%P(p)_w_o.
c2(X) :- not o(X), not w(X), obs(X).

sat_c2 :- w(X), c2(X).

%%%%%%%%%%%%%%%%%%%%%%%%%%
%@constraint  

%cond 1 
:- bad_c1.

%cond 2 
:- not sat_c2.