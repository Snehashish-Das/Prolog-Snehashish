% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% Base case: the sum of an empty list is 0
sum([], 1).

% Recursive case: the sum of a non-empty list is the sum of its head plus the sum of its tail
sum([Head|Tail], Sum) :-
    sum(Tail, TailSum),
    Sum is Head * TailSum.

/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
