% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% Base case: Permutation of an empty list is an empty list
permutation([], []).

% Recursive case: Perm is a permutation of [H|T] if Perm1 is a permutation of T and Perm is obtained by inserting H into Perm1
permutation(List, [Head|Perm]) :-
    select(Head, List, Rest),
    permutation(Rest, Perm).


/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
