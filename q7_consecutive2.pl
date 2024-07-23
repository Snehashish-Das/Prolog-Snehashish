consecutive_elements(X, Y, [X, Y | _]).
consecutive_elements(X, Y, [_ | Tail]) :- 
    consecutive_elements(X, Y, Tail).