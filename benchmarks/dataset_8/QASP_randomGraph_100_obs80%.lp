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
c1(computer(50)).
c1(computer(51)).
c1(computer(52)).
c1(computer(53)).
c1(computer(54)).
c1(computer(55)).
c1(computer(56)).
c1(computer(57)).
c1(computer(58)).
c1(computer(59)).
c1(computer(60)).
c1(computer(61)).
c1(computer(62)).
c1(computer(63)).
c1(computer(64)).
c1(computer(65)).
c1(computer(66)).
c1(computer(67)).
c1(computer(68)).
c1(computer(69)).
c1(computer(70)).
c1(computer(71)).
c1(computer(72)).
c1(computer(73)).
c1(computer(74)).
c1(computer(75)).
c1(computer(76)).
c1(computer(77)).
c1(computer(78)).
c1(computer(79)).
c1(computer(80)).
c1(computer(81)).
c1(computer(82)).
c1(computer(83)).
c1(computer(84)).
c1(computer(85)).
c1(computer(86)).
c1(computer(87)).
c1(computer(88)).
c1(computer(89)).
c1(computer(90)).
c1(computer(91)).
c1(computer(92)).
c1(computer(93)).
c1(computer(94)).
c1(computer(95)).
c1(computer(96)).
c1(computer(97)).
c1(computer(98)).
c1(computer(99)).
c1(wired(0,19)).
c1(wired(0,65)).
c1(wired(1,3)).
c1(wired(1,48)).
c1(wired(2,32)).
c1(wired(2,3)).
c1(wired(3,50)).
c1(wired(3,86)).
c1(wired(7,99)).
c1(wired(8,67)).
c1(wired(9,83)).
c1(wired(10,61)).
c1(wired(11,80)).
c1(wired(12,71)).
c1(wired(12,57)).
c1(wired(13,23)).
c1(wired(14,96)).
c1(wired(14,56)).
c1(wired(16,52)).
c1(wired(17,11)).
c1(wired(19,51)).
c1(wired(19,44)).
c1(wired(21,67)).
c1(wired(22,20)).
c1(wired(22,86)).
c1(wired(23,27)).
c1(wired(24,43)).
c1(wired(24,71)).
c1(wired(25,9)).
c1(wired(26,24)).
c1(wired(36,43)).
c1(wired(36,67)).
c1(wired(36,94)).
c1(wired(38,58)).
c1(wired(40,42)).
c1(wired(45,26)).
c1(wired(46,87)).
c1(wired(48,17)).
c1(wired(48,53)).
c1(wired(49,32)).
c1(wired(50,63)).
c1(wired(51,78)).
c1(wired(51,84)).
c1(wired(52,28)).
c1(wired(52,51)).
c1(wired(56,39)).
c1(wired(56,27)).
c1(wired(57,8)).
c1(wired(58,35)).
c1(wired(59,28)).
c1(wired(60,99)).
c1(wired(62,57)).
c1(wired(63,16)).
c1(wired(64,81)).
c1(wired(65,70)).
c1(wired(67,41)).
c1(wired(69,57)).
c1(wired(69,15)).
c1(wired(70,12)).
c1(wired(70,53)).
c1(wired(71,70)).
c1(wired(72,61)).
c1(wired(73,47)).
c1(wired(73,69)).
c1(wired(73,61)).
c1(wired(73,89)).
c1(wired(74,63)).
c1(wired(75,61)).
c1(wired(75,6)).
c1(wired(76,79)).
c1(wired(76,59)).
c1(wired(77,58)).
c1(wired(77,60)).
c1(wired(78,13)).
c1(wired(80,24)).
c1(wired(83,80)).
c1(wired(84,81)).
c1(wired(84,99)).
c1(wired(86,95)).
c1(wired(91,34)).
c1(wired(93,84)).
c1(wired(94,60)).
c1(wired(94,65)).
c1(wired(96,61)).
c1(wired(96,6)).
c1(wired(97,55)).
c1(wired(99,37)).
c1(up(0)).


%observations
obs(up(41)).
obs(up(15)).
obs(up(43)).
obs(up(36)).
obs(up(34)).
obs(up(89)).
obs(up(79)).
obs(up(27)).
obs(up(22)).
obs(up(33)).
obs(up(40)).
obs(up(29)).
obs(up(47)).
obs(up(72)).
obs(up(96)).
obs(up(11)).
obs(up(64)).
obs(up(59)).
obs(up(19)).
obs(up(9)).
obs(up(38)).
obs(up(92)).
obs(up(70)).
obs(up(98)).
obs(up(37)).
obs(up(14)).
obs(up(32)).
obs(up(4)).
obs(up(62)).
obs(up(95)).
obs(up(58)).
obs(up(97)).
obs(up(60)).
obs(up(51)).
obs(up(6)).
obs(up(61)).
obs(up(35)).
obs(up(80)).
obs(up(76)).
obs(up(2)).
obs(down(84)).
obs(down(46)).
obs(down(86)).
obs(down(8)).
obs(down(83)).
obs(down(13)).
obs(down(87)).
obs(down(69)).
obs(down(63)).
obs(down(54)).
obs(down(93)).
obs(down(45)).
obs(down(31)).
obs(down(55)).
obs(down(81)).
obs(down(74)).
obs(down(56)).
obs(down(48)).
obs(down(42)).
obs(down(25)).
obs(down(20)).
obs(down(99)).
obs(down(66)).
obs(down(21)).
obs(down(65)).
obs(down(50)).
obs(down(85)).
obs(down(71)).
obs(down(49)).
obs(down(53)).
obs(down(16)).
obs(down(28)).
obs(down(90)).
obs(down(26)).
obs(down(44)).
obs(down(39)).
obs(down(12)).
obs(down(73)).
obs(down(91)).


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
c2(computer(50)).
c2(computer(51)).
c2(computer(52)).
c2(computer(53)).
c2(computer(54)).
c2(computer(55)).
c2(computer(56)).
c2(computer(57)).
c2(computer(58)).
c2(computer(59)).
c2(computer(60)).
c2(computer(61)).
c2(computer(62)).
c2(computer(63)).
c2(computer(64)).
c2(computer(65)).
c2(computer(66)).
c2(computer(67)).
c2(computer(68)).
c2(computer(69)).
c2(computer(70)).
c2(computer(71)).
c2(computer(72)).
c2(computer(73)).
c2(computer(74)).
c2(computer(75)).
c2(computer(76)).
c2(computer(77)).
c2(computer(78)).
c2(computer(79)).
c2(computer(80)).
c2(computer(81)).
c2(computer(82)).
c2(computer(83)).
c2(computer(84)).
c2(computer(85)).
c2(computer(86)).
c2(computer(87)).
c2(computer(88)).
c2(computer(89)).
c2(computer(90)).
c2(computer(91)).
c2(computer(92)).
c2(computer(93)).
c2(computer(94)).
c2(computer(95)).
c2(computer(96)).
c2(computer(97)).
c2(computer(98)).
c2(computer(99)).
c2(wired(0,19)).
c2(wired(0,65)).
c2(wired(1,3)).
c2(wired(1,48)).
c2(wired(2,32)).
c2(wired(2,3)).
c2(wired(3,50)).
c2(wired(3,86)).
c2(wired(7,99)).
c2(wired(8,67)).
c2(wired(9,83)).
c2(wired(10,61)).
c2(wired(11,80)).
c2(wired(12,71)).
c2(wired(12,57)).
c2(wired(13,23)).
c2(wired(14,96)).
c2(wired(14,56)).
c2(wired(16,52)).
c2(wired(17,11)).
c2(wired(19,51)).
c2(wired(19,44)).
c2(wired(21,67)).
c2(wired(22,20)).
c2(wired(22,86)).
c2(wired(23,27)).
c2(wired(24,43)).
c2(wired(24,71)).
c2(wired(25,9)).
c2(wired(26,24)).
c2(wired(36,43)).
c2(wired(36,67)).
c2(wired(36,94)).
c2(wired(38,58)).
c2(wired(40,42)).
c2(wired(45,26)).
c2(wired(46,87)).
c2(wired(48,17)).
c2(wired(48,53)).
c2(wired(49,32)).
c2(wired(50,63)).
c2(wired(51,78)).
c2(wired(51,84)).
c2(wired(52,28)).
c2(wired(52,51)).
c2(wired(56,39)).
c2(wired(56,27)).
c2(wired(57,8)).
c2(wired(58,35)).
c2(wired(59,28)).
c2(wired(60,99)).
c2(wired(62,57)).
c2(wired(63,16)).
c2(wired(64,81)).
c2(wired(65,70)).
c2(wired(67,41)).
c2(wired(69,57)).
c2(wired(69,15)).
c2(wired(70,12)).
c2(wired(70,53)).
c2(wired(71,70)).
c2(wired(72,61)).
c2(wired(73,47)).
c2(wired(73,69)).
c2(wired(73,61)).
c2(wired(73,89)).
c2(wired(74,63)).
c2(wired(75,61)).
c2(wired(75,6)).
c2(wired(76,79)).
c2(wired(76,59)).
c2(wired(77,58)).
c2(wired(77,60)).
c2(wired(78,13)).
c2(wired(80,24)).
c2(wired(83,80)).
c2(wired(84,81)).
c2(wired(84,99)).
c2(wired(86,95)).
c2(wired(91,34)).
c2(wired(93,84)).
c2(wired(94,60)).
c2(wired(94,65)).
c2(wired(96,61)).
c2(wired(96,6)).
c2(wired(97,55)).
c2(wired(99,37)).
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