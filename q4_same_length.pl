same_length([], []).
same_length([_ | Tail1], [_ | Tail2]) :-
    same_length(Tail1, Tail2).