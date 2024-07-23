% Base case
sublist([], _).

% If the heads of both lists match, check the tails.
sublist([H|T1], [H|T2]) :-
    sublist(T1, T2).

% If the heads do not match, skip the head of the main list.
sublist(Sub, [_|T2]) :-
    sublist(Sub, T2).
