check_number(N, positive) :- N > 0.
check_number(0, zero).
check_number(N, negative) :- N < 0.
