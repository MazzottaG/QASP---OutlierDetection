down(X) :- computer(X), not predecessortUp(X), X!=0.
predecessortUp(X) :- wired(Y,X), up(Y).
up(X):- computer(X), not down(X).






