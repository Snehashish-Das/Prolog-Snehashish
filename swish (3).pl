% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% Base case: max and min of a single element list is that element
max_min([X], X, X).

% Recursive case: recursively find max and min of the tail, and compare them with the head
max_min([Head|Tail], Max, Min) :-
    max_min(Tail, MaxTail, MinTail),
    Max is max(Head, MaxTail),
    Min is min(Head, MinTail).


/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
