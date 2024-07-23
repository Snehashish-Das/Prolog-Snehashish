sum_of_inverses(0, 0).
sum_of_inverses(N, S):- N > 0, N1 is N - 1,
sum_of_inverses(N1, S1), S is S1 + 1/N.
