print_range(N, M):- N =< M, write(N), nl, N1 is N + 1, print_range(N1, M).
print_range(N, M) :- N > M.
