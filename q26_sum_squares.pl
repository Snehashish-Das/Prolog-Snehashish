sum_of_squares(0, 0).
sum_of_squares(N, S):- N > 0, N1 is N - 1,
sum_of_squares(N1, S1), S is S1 + N * N.
