check(X,[X|_]).
check(X,[_|T]):-
    check(X,T).

remove_dup([],[]).
remove_dup([H|T],[H|R]):-
    \+ check(H,T),
    remove_dup(T,R).

remove_dup([],[]).
remove_dup([H|T],R):-
    check(H,T),
    remove_dup(T,R).

remove:-
    write('Enter the list : '),
    read(List),
    remove_dup(List, Result),
    write(Result).


