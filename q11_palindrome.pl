rl([],[]).
rl([H|T], R):- rl(T, RT), append(RT, [H], R).
palindrome(List) :- rl(List, List).
