
member(X, [X|_]).
member(X, [_ | Tail]) :-
    member(X, Tail).

len([], 0).
len([_|T], N) :-
    len(T, N1),
    N is N1 + 1.

appnd([], List, List).
appnd([H|T], List2, [H | Result]) :-
    appnd(T, List2, Result).

sumList([], 0).
sumList(...)