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
c1(computer(10)).
c1(computer(11)).
c1(computer(12)).
c1(computer(13)).
c1(computer(14)).
c1(computer(15)).
c1(computer(16)).
c1(computer(17)).
c1(computer(18)).
c1(computer(19)).
c1(computer(20)).
c1(computer(21)).
c1(computer(22)).
c1(computer(23)).
c1(computer(24)).
c1(computer(25)).
c1(computer(26)).
c1(computer(27)).
c1(computer(28)).
c1(computer(29)).
c1(computer(30)).
c1(computer(31)).
c1(computer(32)).
c1(computer(33)).
c1(computer(34)).
c1(computer(35)).
c1(computer(36)).
c1(computer(37)).
c1(computer(38)).
c1(computer(39)).
c1(computer(40)).
c1(computer(41)).
c1(computer(42)).
c1(computer(43)).
c1(computer(44)).
c1(computer(45)).
c1(computer(46)).
c1(computer(47)).
c1(computer(48)).
c1(computer(49)).
c1(wired(5,22)).
c1(wired(6,10)).
c1(wired(7,29)).
c1(wired(14,42)).
c1(wired(15,49)).
c1(wired(16,0)).
c1(wired(21,48)).
c1(wired(21,40)).
c1(wired(22,18)).
c1(wired(33,25)).
c1(wired(34,24)).
c1(wired(38,23)).
c1(wired(47,48)).
c1(wired(49,20)).
c1(wired(49,46)).
c1(up(0)).


%observations
obs(up(45)).
obs(up(1)).
obs(up(14)).
obs(up(34)).
obs(up(16)).
obs(up(38)).
obs(up(49)).
obs(up(3)).
obs(up(6)).
obs(up(48)).
obs(up(43)).
obs(up(20)).
obs(up(11)).
obs(up(31)).
obs(up(7)).
obs(up(27)).
obs(up(42)).
obs(up(36)).
obs(up(24)).
obs(up(39)).
obs(up(12)).
obs(down(33)).
obs(down(18)).
obs(down(21)).
obs(down(4)).
obs(down(23)).
obs(down(8)).
obs(down(29)).
obs(down(30)).
obs(down(19)).
obs(down(13)).
obs(down(2)).
obs(down(22)).
obs(down(15)).
obs(down(10)).
obs(down(9)).
obs(down(40)).
obs(down(5)).
obs(down(41)).


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
c2(computer(10)).
c2(computer(11)).
c2(computer(12)).
c2(computer(13)).
c2(computer(14)).
c2(computer(15)).
c2(computer(16)).
c2(computer(17)).
c2(computer(18)).
c2(computer(19)).
c2(computer(20)).
c2(computer(21)).
c2(computer(22)).
c2(computer(23)).
c2(computer(24)).
c2(computer(25)).
c2(computer(26)).
c2(computer(27)).
c2(computer(28)).
c2(computer(29)).
c2(computer(30)).
c2(computer(31)).
c2(computer(32)).
c2(computer(33)).
c2(computer(34)).
c2(computer(35)).
c2(computer(36)).
c2(computer(37)).
c2(computer(38)).
c2(computer(39)).
c2(computer(40)).
c2(computer(41)).
c2(computer(42)).
c2(computer(43)).
c2(computer(44)).
c2(computer(45)).
c2(computer(46)).
c2(computer(47)).
c2(computer(48)).
c2(computer(49)).
c2(wired(5,22)).
c2(wired(6,10)).
c2(wired(7,29)).
c2(wired(14,42)).
c2(wired(15,49)).
c2(wired(16,0)).
c2(wired(21,48)).
c2(wired(21,40)).
c2(wired(22,18)).
c2(wired(33,25)).
c2(wired(34,24)).
c2(wired(38,23)).
c2(wired(47,48)).
c2(wired(49,20)).
c2(wired(49,46)).
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