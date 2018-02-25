
/* Ejemplo de familia en Perl */
/* Se lee : la madre de alice es lea etc. */

/*Hechos: la madre de alice es lea */
mother(alice,lea).
mother(john,julia).
mother(lea,alberta).
father(james,alfred).
father(lea,john).
mother(alberta,paula).

/* Reglas */
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).

/* X tiene un padre Z que a su vez tiene un padre Y */
/* Si paso grandparent(lea,X). me imprime sólamente julia (el primero que encuentra) */
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).