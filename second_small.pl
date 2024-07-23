second_smallest(List, SecondSmallest) :-
    sort(List, Sorted),
    Sorted = [_, SecondSmallest | _].
