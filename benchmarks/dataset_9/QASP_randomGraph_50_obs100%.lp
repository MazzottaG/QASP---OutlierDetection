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
c1(wired(1,12)).
c1(wired(7,43)).
c1(wired(12,29)).
c1(wired(14,37)).
c1(wired(15,42)).
c1(wired(20,37)).
c1(wired(23,12)).
c1(wired(26,48)).
c1(wired(28,2)).
c1(wired(30,45)).
c1(wired(31,10)).
c1(wired(31,17)).
c1(wired(35,22)).
c1(wired(38,47)).
c1(wired(41,31)).
c1(wired(41,28)).
c1(wired(44,9)).
c1(wired(45,18)).
c1(wired(49,30)).
c1(up(0)).


%observations
obs(up(48)).
obs(up(22)).
obs(up(3)).
obs(up(16)).
obs(up(39)).
obs(up(7)).
obs(up(27)).
obs(up(40)).
obs(up(32)).
obs(up(4)).
obs(up(1)).
obs(up(42)).
obs(up(6)).
obs(up(26)).
obs(up(24)).
obs(up(25)).
obs(up(43)).
obs(up(12)).
obs(up(23)).
obs(up(11)).
obs(up(41)).
obs(up(2)).
obs(up(5)).
obs(up(33)).
obs(up(15)).
obs(up(36)).
obs(down(17)).
obs(down(9)).
obs(down(29)).
obs(down(47)).
obs(down(35)).
obs(down(34)).
obs(down(28)).
obs(down(38)).
obs(down(13)).
obs(down(18)).
obs(down(37)).
obs(down(8)).
obs(down(44)).
obs(down(10)).
obs(down(21)).
obs(down(46)).
obs(down(30)).
obs(down(49)).
obs(down(45)).
obs(down(31)).
obs(down(20)).
obs(down(19)).
obs(down(14)).


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
c2(wired(1,12)).
c2(wired(7,43)).
c2(wired(12,29)).
c2(wired(14,37)).
c2(wired(15,42)).
c2(wired(20,37)).
c2(wired(23,12)).
c2(wired(26,48)).
c2(wired(28,2)).
c2(wired(30,45)).
c2(wired(31,10)).
c2(wired(31,17)).
c2(wired(35,22)).
c2(wired(38,47)).
c2(wired(41,31)).
c2(wired(41,28)).
c2(wired(44,9)).
c2(wired(45,18)).
c2(wired(49,30)).
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