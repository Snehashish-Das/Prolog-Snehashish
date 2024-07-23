ordered_ascending([]).
ordered_ascending([_]).

ordered_ascending([X, Y | Tail]) :- X =< Y, ordered_ascending([Y | Tail]).   

ordered_descending([]).
ordered_descending([_]).


ordered_descending([X, Y | Tail]) :- X >= Y, ordered_descending([Y | Tail]).

ordered_list(List) :-
ordered_ascending(List);  
ordered_descending(List).
