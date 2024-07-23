% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% Base case: reverse of an empty list is an empty list
reverse_list([], []).
% Predicate to append an element to a list
append_list([], X, [X]).
append_list([H|T1], X, [H|T2]) :-
    append_list(T1, X, T2).
% Recursive case: reverse of a non-empty list is the reverse of its tail appended with its head
reverse_list([Head|Tail], Reversed) :-
    reverse_list(Tail, ReversedTail),
    append_list(ReversedTail, Head, Reversed).


/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
