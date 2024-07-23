marks(st1,'Steel',95).
marks(st2,'Creative',85).
marks(st3,'Accoustic',93).
marks(st4,'Reapr',80).

marking(Id,Marks) :- marks(Id,_Name,Marks).
details(Id,Name) :- marks(Id,Name,_Marks).