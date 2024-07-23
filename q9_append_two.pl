append2([], List, List).
append2([Head | T1], List2, [Head | T3]) :- 
    append2(T1, List2, T3).