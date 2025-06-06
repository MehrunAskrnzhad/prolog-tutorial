% SUM = 1 + 2 + 3 + ... + N

sum(1, 1).
sum(N, SUM) :-
    N > 1,
    Prev is N - 1,
    sum(Prev, SumPrev),
    SUM is SumPrev + N.


% FACT = 1 * 2 * 3 * ... * N

fact(0, 1).
fact(1, 1).
fact(N, FACT) :-
    N > 0,
    Prev is N - 1,
    fact(Prev, FactPrev),
    FACT is FactPrev * N.