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
c1(wired(4,16)).
c1(wired(14,48)).
c1(wired(15,20)).
c1(wired(16,4)).
c1(wired(20,30)).
c1(wired(21,47)).
c1(wired(25,15)).
c1(wired(25,0)).
c1(wired(26,15)).
c1(wired(28,43)).
c1(wired(32,9)).
c1(wired(34,32)).
c1(wired(35,5)).
c1(wired(36,28)).
c1(wired(39,19)).
c1(wired(40,39)).
c1(wired(43,5)).
c1(wired(45,11)).
c1(wired(45,3)).
c1(wired(45,26)).
c1(wired(46,17)).
c1(wired(47,1)).
c1(wired(47,43)).
c1(wired(47,25)).
c1(up(0)).


%observations
obs(up(21)).
obs(up(38)).
obs(up(7)).
obs(up(45)).
obs(up(18)).
obs(up(23)).
obs(up(49)).
obs(up(14)).
obs(up(39)).
obs(up(6)).
obs(up(44)).
obs(up(28)).
obs(up(30)).
obs(up(2)).
obs(up(16)).
obs(up(29)).
obs(up(5)).
obs(up(40)).
obs(up(3)).
obs(down(1)).
obs(down(19)).
obs(down(48)).
obs(down(4)).
obs(down(43)).
obs(down(37)).
obs(down(47)).
obs(down(42)).
obs(down(31)).
obs(down(41)).
obs(down(25)).
obs(down(12)).
obs(down(15)).
obs(down(8)).
obs(down(46)).
obs(down(9)).
obs(down(32)).
obs(down(26)).
obs(down(35)).
obs(down(33)).


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
c2(wired(4,16)).
c2(wired(14,48)).
c2(wired(15,20)).
c2(wired(16,4)).
c2(wired(20,30)).
c2(wired(21,47)).
c2(wired(25,15)).
c2(wired(25,0)).
c2(wired(26,15)).
c2(wired(28,43)).
c2(wired(32,9)).
c2(wired(34,32)).
c2(wired(35,5)).
c2(wired(36,28)).
c2(wired(39,19)).
c2(wired(40,39)).
c2(wired(43,5)).
c2(wired(45,11)).
c2(wired(45,3)).
c2(wired(45,26)).
c2(wired(46,17)).
c2(wired(47,1)).
c2(wired(47,43)).
c2(wired(47,25)).
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