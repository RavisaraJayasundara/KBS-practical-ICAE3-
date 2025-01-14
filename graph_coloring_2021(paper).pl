adjacent(1,2).
adjacent(1,3).
adjacent(1,5).
adjacent(1,6).
adjacent(2,3).
adjacent(2,4).
adjacent(2,5).
adjacent(2,6).
adjacent(3,4).
adjacent(3,6).
adjacent(5,6).

adjacent(2,1).
adjacent(3,1).
adjacent(5,1).
adjacent(6,1).
adjacent(3,2).
adjacent(4,2).
adjacent(5,2).
adjacent(6,2).
adjacent(4,3).
adjacent(6,3).
adjacent(6,5).

color(1,red,s1).
color(2,blue,s1).
color(3,green,s1).
color(4,yellow,s1).
color(5,yellow,s1).
color(6,orange,s1).

color(1,red,s2).
color(2,brown,s2).
color(3,blue,s2).
color(4,black,s2).
color(5,black,s2).
color(6,red,s2).



 conflict(Z):-adjacent(X,Y),color(X,C,Z),color(Y,C,Z)->write(Z),write('
 Scheme is not valied');write(Z),write(' scheme is valied').

