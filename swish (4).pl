% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here
% Base case: max and min of a single element list is that element
max_min([X], X, X).

% Case where the head is greater than or equal to the max of the tail
max_min([Head|Tail], Max, Min) :-
    max_min(Tail, MaxTail, MinTail),
    (Head >= MaxTail ->
        Max = Head
    ;
        Max = MaxTail
    ),
    (Head =< MinTail ->
        Min = Head
    ;
        Min = MinTail
    ).


/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
