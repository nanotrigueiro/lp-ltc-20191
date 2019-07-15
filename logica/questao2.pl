% Premissas
p(deus).
q(amor).
q(steve_wonder).
r(?).

entao(X,Y) :-
    X,\+ Y -> false;
    true.

/** <Respostas>

entao(X,Y) equivale a operação Se p, então q.(p -> q)

a)
  p(x) -> x é amor
  q(x) -> x é cego
  .:r(x) -> x é deus
  
  (1) p(x) - proposição
  (2) q(x) - proposição
  (3) p(x) ^ q(x) - conjunção em (1) e (2)
  ----------------------------------------
  
  p(deus) ^ q(amor) ^ q(steve_wonder)
  ____________________________
  .: r(steve_wonder)
  
  Não é possível afirmar esta conclusão, pois p(x)^q(x)^q(x) -> r(x) não é 
  uma tautologia. Portanto este argumento é uma falácia.
  
  consulta: entao(\+r(steve_wonder), \+ (p(deus);q(amor);q(steve_wonder)))

b)
  Para todas pessoas p, p quer emagrecer, p faz dieta.
  Para toda dieta d, d recomenda o consumo de veduras e peixe.
  Para todo elefante e baleia eb, eb consome verduras e peixe.
  eb são gordos.
  .: d engorda.
  
  p(x) -> x quer emagrecer
  q(x) -> x faz dieta
  r(x) -> x recomenda o consume de verduras e peixe
  s(x) -> x consome verduras e peixe.
  t(x) -> x é gordo.
  .: q(x) -> t(x) se x faz dieta, então engorda.
  
  Para todo x, p(x) então q(x);
  Para todo d, r(d);
  Para todo eb, s(eb);
  t(eb);
  .: q(x) -> t(x).
  
  (1) p(x) - proposição
  (2) q(x) - proposição
  (3) p(x) -> q(x) - premissa
  (4) r(x) - proposição
  (5) s(x) - proposição
  (6) t(x) - proposição
  (7) s(x) ^ t(x) - conjunção em (5) e (6)
  (8) r(x) ^ (s(x) ^ t(x)) - conjunção em (7) e (4)
  (9) 
  
*/
