% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

%a) Premissas
amor(deus).
cego(amor).
cego(steve_wonder).
deus(?).

%b) Premissas
dieta(pessoa).
comev(pessoa).
comev(elefante).
comep(pessoa).
comep(baleia).
gordo(elefante).
gordo(baleia).

% Regras
entao(X,Y) :-
    X,\+ Y -> false;
    true.

/** <Respostas>

entao(X,Y) equivale a operação Se p, então q.(p -> q)

a)
  amor(x) -> x é amor
  cego(x) -> x é cego
  .:deus(x) -> x é deus
  
  (1) amor(x) - proposição
  (2) cego(x) - proposição
  (3) amor(x) ^ cego(x) - conjunção em (1) e (2)
  ----------------------------------------
  
  amor(deus) ^ cego(amor) ^ cego(steve_wonder)
  ____________________________
  .: deus(steve_wonder)
  
  Não é possível afirmar esta conclusão, pois amor(x)^cego(x)^cego(x) -> deus(x) não é 
  uma tautologia. Portanto este argumento é uma falácia.
  
  Fazendo uma prova pela contrapositiva(~q -> ~p):
  consulta: entao(\+deus(steve_wonder), \+ (amor(deus);cego(amor);cego(steve_wonder)))

b)
  Para todas pessoas p, p faz dieta.
  Para toda dieta d, d recomenda o consumo de veduras e peixe.
  Para todo elefante e, e consome verduras e para toda baleia b, b consome peixe.
  e e b são gordos.
  .: d engorda.
  
  dieta(x) -> x faz dieta.
  comev(x) -> x consome verduras.
  comep(x) -> x consome peixe.
  gordo(x) -> x é gordo.
  .: dieta(x) -> gordo(x) se x faz dieta, então engorda.
  
  Para todo x, dieta(x);
  Para todo e, comev(e);
  Para todo b, comep(b);
  gordo(e) ^ gordo(b);
  .: dieta(x) -> gordo(x).
  
  (1) dieta(x) - proposição
  (2) comev(x) - proposição
  (3) comep(x) - proposição
  (4) gordo(x) - proposição
  (5) comev(x) ^ comep(x) - conjunção em (2) e (3)
  (6) gordo(x) ^ comev(x) ^ comep(x) - conjunção (4) e (5)
  -------------------------------------------------------------------------------------------------
  gordo(elefante) ^ gordo(baleia) ^ comev(elefante) ^ comep(baleia) ^ comev(pessoa) ^ comep(pessoa)
  _________________________________________________________________________________________________
  .: dieta(pessoa) -> gordo(pessoa)
  
  Não é possível afirmar esta conclusão, pois gordo(elefante) ^ gordo(baleia) ^ comev(elefante) ^ comep(baleia) ^ comev(pessoa) ^ comep(pessoa) -> gordo(pessoa)
  não é uma tautologia. Portanto este argumento é uma falácia.
  
  Fazendo uma prova pela contrapositiva(~q -> ~p):
  consulta: entao(\+gordo(pessoa), \+ (gordo(elefante); gordo(baleia); comev(elefante); comep(baleia); comev(pessoa); comep(pessoa)))
*/