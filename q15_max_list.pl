max_element([X], X).
max_element([Head | Tail], Max) :-
    max_element(Tail, MaxTail),
    Max is max(Head, MaxTail). 
