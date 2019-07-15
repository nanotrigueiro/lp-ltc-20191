% fato
ama(carlos, dora).
ama(dora, lia).
ama(lia, léa).
ama(léa, paulo).
ama(paulo, juca).
ama(juca, dora).
ama(dora, carlos).
ama(dora, rita).
ama(rita, dito).
ama(dito, rita).
ama(rita, carlos).
ama(dora, pedro).
ama(pedro, filha).
ama(filha, carlos).
ama(dora, léa).
ama(dora, paulo).
ama(dora, juca).
ama(dora, dito).
ama(dora, carlos).
ama(dora, filha).

% Regra
rivais(X,Y) :-
    ama(X,Z),
    ama(Y,Z),
    \+ X = Y.

casal(X,Y) :-
    ama(X, Y),
    ama(Y, X),
    \+ X = Y.

/** <Respostas>
a) ?- ama(carlos, X).

b) ?- rivais(X, Y).

c) ?- setof((X,Y),casal(X,Y),Casais), member((X,Y), Casais), \+ (Y@<X, member((Y,X), Casais)).
*/
