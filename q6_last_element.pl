last_element([X], X).
last_element([_ | Tail], X) :- last_element(Tail, X).