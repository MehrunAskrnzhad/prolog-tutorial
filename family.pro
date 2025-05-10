father(ahmad, ali).
father(akbar, zahra).
father(ali, sara).
father(ali, hasan).

mother(zahra, sara).
mother(zahra, hasan).

female(sara).
female(zahra).

male(ali).
male(hasan).


sister(P1, P2) :-
    father(F, P1),
    father(F, P2),
    mother(M, P1),
    mother(M, P2),
    female(P1),
    P1 \= P2.

brother(P1, P2) :-
    father(F, P1),
    father(F, P2),
    mother(M, P1),
    mother(M, P2),
    male(P1),
    P1 \= P2.

grandFather(G, C) :-
    father(G, P),
    (father(P, C) ; mother(P, C)).