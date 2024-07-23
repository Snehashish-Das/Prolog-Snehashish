female(pam).
female(ann).
female(pat).
female(liz).
male(tom).
male(bob).
male(jim).
parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).
mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).
grandparent(X,Y):- parent(X,Z),parent(Z,Y).
grandchildren(X,Y):- parent(Y,Z),parent(Z,X).
commonparent(X,Y):- parent(Z,X),parent(Z,Y).
sister(X,Y):- parent(Z,X),parent(Z,Y),female(X),X /= Y.
grandfather(X,Y):- parent(X,Z),parent(Z,Y),male(X).
