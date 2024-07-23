select_element([], _, _, []).
select_element([Element|Tail], Element, Element, Rest) :-
    select_element(Tail, Element, Element, Rest).
select_element([Head|Tail], Element, Removed, [Head|RestTail]) :-
    Head \= Element,
    select_element(Tail, Element, Removed, RestTail).
