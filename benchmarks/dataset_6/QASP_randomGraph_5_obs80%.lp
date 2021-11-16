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
c1(wired(0,3)).
c1(wired(0,4)).
c1(wired(0,2)).
c1(wired(1,0)).
c1(wired(1,4)).
c1(wired(1,3)).
c1(wired(2,1)).
c1(wired(2,4)).
c1(wired(4,0)).
c1(up(0)).


%observations
obs(up(1)).
obs(down(2)).
obs(down(3)).


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
c2(wired(0,3)).
c2(wired(0,4)).
c2(wired(0,2)).
c2(wired(1,0)).
c2(wired(1,4)).
c2(wired(1,3)).
c2(wired(2,1)).
c2(wired(2,4)).
c2(wired(4,0)).
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