maximum(X, Y, Max) :- X >= Y, Max is X.
maximum(X, Y, Max) :- Y > X, Max is Y.
