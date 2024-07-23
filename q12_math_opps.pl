% Addition function
addition(X, Y, Z) :- Z is X + Y.
% Subtraction function
subtraction(X, Y, Z) :- Z is X - Y.
% Multiplication function
multiplication(X, Y, Z) :- Z is X * Y.
% Division function
division(X, Y, Z) :- Y =\= 0, Z is X / Y.
% Square root function
square_root(X, Y) :- X >= 0, Y is sqrt(X).
