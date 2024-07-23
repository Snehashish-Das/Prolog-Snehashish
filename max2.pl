maximum(X,Y) :-
    X  > Y, write(X), write(' is greater').

maximum(X,Y) :-
    Y > X, write(Y), write(' is greater').

maximum(X,Y) :-
    X = Y, write('Both are same').

