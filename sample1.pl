male("bill").
male("sam").
male("jack").
male("steve").
female("jessi").
female("tina").

parent("bill","sam").
parent("bill","jessi").
parent("sam","jack").
parent("sam","tina").
parent("sam","steve").

grandparent(X,Y):- parent(X,Z),parent(Z,Y),male(X).



