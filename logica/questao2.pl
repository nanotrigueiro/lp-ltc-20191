% Premissas
p(deus).
q(amor).
q(steve_wonder).
r(?).

entao(X,Y) :-
    X,\+ Y -> false;
    true.

/** <Respostas>

entao(X,Y) equivale a opera��o Se p, ent�o q.(p -> q)

a)
  p(x) -> x � amor
  q(x) -> x � cego
  .:r(x) -> x � deus
  
  (1) p(x) - proposi��o
  (2) q(x) - proposi��o
  (3) p(x) ^ q(x) - conjun��o em (1) e (2)
  ----------------------------------------
  
  p(deus) ^ q(amor) ^ q(steve_wonder)
  ____________________________
  .: r(steve_wonder)
  
  N�o � poss�vel afirmar esta conclus�o, pois p(x)^q(x)^q(x) -> r(x) n�o � 
  uma tautologia. Portanto este argumento � uma fal�cia.
  
  consulta: entao(\+r(steve_wonder), \+ (p(deus);q(amor);q(steve_wonder)))

b)
  Para todas pessoas p, p quer emagrecer, p faz dieta.
  Para toda dieta d, d recomenda o consumo de veduras e peixe.
  Para todo elefante e baleia eb, eb consome verduras e peixe.
  eb s�o gordos.
  .: d engorda.
  
  p(x) -> x quer emagrecer
  q(x) -> x faz dieta
  r(x) -> x recomenda o consume de verduras e peixe
  s(x) -> x consome verduras e peixe.
  t(x) -> x � gordo.
  .: q(x) -> t(x) se x faz dieta, ent�o engorda.
  
  Para todo x, p(x) ent�o q(x);
  Para todo d, r(d);
  Para todo eb, s(eb);
  t(eb);
  .: q(x) -> t(x).
  
  (1) p(x) - proposi��o
  (2) q(x) - proposi��o
  (3) p(x) -> q(x) - premissa
  (4) r(x) - proposi��o
  (5) s(x) - proposi��o
  (6) t(x) - proposi��o
  (7) s(x) ^ t(x) - conjun��o em (5) e (6)
  (8) r(x) ^ (s(x) ^ t(x)) - conjun��o em (7) e (4)
  (9) 
  
*/
