%@exists

%program_c1
%Replace_with_program_c1%


%observations
%Replace_with_observations%


%%% outlier and witness guessing
{o(X):obs(X)}.
{w(X):obs(X),not o(X)}.


%P(p)_w.
c1(X) :- not w(X), obs(X).

bad_c1 :- w(X), c1(X).
    

%%%%%%%%%%%%%%%%%%%%%%%%%%    
%@forall   

%program_c2
%Replace_with_program_c2%


%P(p)_w_o.
c2(X) :- not o(X), not w(X), obs(X).

sat_c2 :- w(X), c2(X).

%%%%%%%%%%%%%%%%%%%%%%%%%%
%@constraint  

%cond 1 
:- bad_c1.

%cond 2 
:- not sat_c2.


