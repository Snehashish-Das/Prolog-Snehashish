% Student exercise profile
:- set_prolog_flag(occurs_check, error).        % disallow cyclic terms
:- set_prolog_stack(global, limit(8 000 000)).  % limit term space (8Mb)
:- set_prolog_stack(local,  limit(2 000 000)).  % limit environment space

% Your program goes here

length_l([],0).
length_l([_|T],N):-
    length_l(T,N1),
    N is N1+1.
	
/** <examples> Your example queries go here, e.g.
?- member(X, [cat, mouse]).
*/
