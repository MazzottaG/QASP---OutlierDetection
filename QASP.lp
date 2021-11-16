%@exists

%program_c1
c1(down(X)) :- c1(computer(X)), not c1(predecessortUp(X)), X!=0.
c1(predecessortUp(X)) :- c1(wired(Y,X)), c1(up(Y)).
c1(up(X)):- c1(computer(X)), not c1(down(X)).
c1(up(s)).

c1(computer(s)).
c1(computer(a)).
c1(computer(h)).
c1(computer(b)).
c1(computer(c)).
c1(computer(e)).
c1(computer(d)).
c1(computer(f)).
c1(computer(g)).
c1(computer(t)).


c1(wired(s,a)).
c1(wired(s,h)).
c1(wired(s,b)).

c1(wired(a,c)).
c1(wired(h,c)).
c1(wired(b,c)).

c1(wired(c,e)).
c1(wired(c,d)).
c1(wired(c,f)).

c1(wired(e,g)).
c1(wired(d,g)).
c1(wired(f,t)).

c1(wired(g,t)).


%observations
obs(down(a)).
obs(up(b)).
obs(down(c)).
obs(up(d)).
obs(up(e)).
obs(up(f)).
obs(up(g)).
obs(up(h)).
obs(up(t)).


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
c2(up(s)).

c2(computer(s)).
c2(computer(a)).
c2(computer(h)).
c2(computer(b)).
c2(computer(c)).
c2(computer(e)).
c2(computer(d)).
c2(computer(f)).
c2(computer(g)).
c2(computer(t)).


c2(wired(s,a)).
c2(wired(s,h)).
c2(wired(s,b)).

c2(wired(a,c)).
c2(wired(h,c)).
c2(wired(b,c)).

c2(wired(c,e)).
c2(wired(c,d)).
c2(wired(c,f)).

c2(wired(e,g)).
c2(wired(d,g)).
c2(wired(f,t)).

c2(wired(g,t)).


%P(p)_w_o.
c2(X) :- not o(X), not w(X), obs(X).

sat_c2 :- w(X), c2(X).

%%%%%%%%%%%%%%%%%%%%%%%%%%
%@constraint  

%cond 1 
:- bad_c1.

%cond 2 
:- not sat_c2.