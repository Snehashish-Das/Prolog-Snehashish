ascending([_]).
ascending([X, Y | Tail]) :-
    X =< Y,
    ascending([Y | Tail]).

descending([_]).
descending([X, Y | Tail]) :-
    X >= Y,
    descending([Y | Tail]).

check(List):-
    (   ascending(List)
    ->  write('List is ascending')
    ;   descending(List)
    ->  write('List is descending')
    ;   write('No ordering')
    ).

ordering :-
    write('Enter the list : '),
    read(List),
    check(List).

