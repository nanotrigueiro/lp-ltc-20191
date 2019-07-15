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

entao(X,Y) equivale a opera��o Se p, ent�o q.(p -> q)

a)
  amor(x) -> x � amor
  cego(x) -> x � cego
  .:deus(x) -> x � deus
  
  (1) amor(x) - proposi��o
  (2) cego(x) - proposi��o
  (3) amor(x) ^ cego(x) - conjun��o em (1) e (2)
  ----------------------------------------
  
  amor(deus) ^ cego(amor) ^ cego(steve_wonder)
  ____________________________
  .: deus(steve_wonder)
  
  N�o � poss�vel afirmar esta conclus�o, pois amor(x)^cego(x)^cego(x) -> deus(x) n�o � 
  uma tautologia. Portanto este argumento � uma fal�cia.
  
  Fazendo uma prova pela contrapositiva(~q -> ~p):
  consulta: entao(\+deus(steve_wonder), \+ (amor(deus);cego(amor);cego(steve_wonder)))

b)
  Para todas pessoas p, p faz dieta.
  Para toda dieta d, d recomenda o consumo de veduras e peixe.
  Para todo elefante e, e consome verduras e para toda baleia b, b consome peixe.
  e e b s�o gordos.
  .: d engorda.
  
  dieta(x) -> x faz dieta.
  comev(x) -> x consome verduras.
  comep(x) -> x consome peixe.
  gordo(x) -> x � gordo.
  .: dieta(x) -> gordo(x) se x faz dieta, ent�o engorda.
  
  Para todo x, dieta(x);
  Para todo e, comev(e);
  Para todo b, comep(b);
  gordo(e) ^ gordo(b);
  .: dieta(x) -> gordo(x).
  
  (1) dieta(x) - proposi��o
  (2) comev(x) - proposi��o
  (3) comep(x) - proposi��o
  (4) gordo(x) - proposi��o
  (5) comev(x) ^ comep(x) - conjun��o em (2) e (3)
  (6) gordo(x) ^ comev(x) ^ comep(x) - conjun��o (4) e (5)
  -------------------------------------------------------------------------------------------------
  gordo(elefante) ^ gordo(baleia) ^ comev(elefante) ^ comep(baleia) ^ comev(pessoa) ^ comep(pessoa)
  _________________________________________________________________________________________________
  .: dieta(pessoa) -> gordo(pessoa)
  
  N�o � poss�vel afirmar esta conclus�o, pois gordo(elefante) ^ gordo(baleia) ^ comev(elefante) ^ comep(baleia) ^ comev(pessoa) ^ comep(pessoa) -> gordo(pessoa)
  n�o � uma tautologia. Portanto este argumento � uma fal�cia.
  
  Fazendo uma prova pela contrapositiva(~q -> ~p):
  consulta: entao(\+gordo(pessoa), \+ (gordo(elefante); gordo(baleia); comev(elefante); comep(baleia); comev(pessoa); comep(pessoa)))
*/