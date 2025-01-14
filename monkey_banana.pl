move(state(middle,onbox,middle,hasnot),
grasp,
state(middle,onbox,middle,has)).

move(state(P,onfloor,P,H),
climb,
state(P,onbox,P,H)).

move(state(p1,onfloor,P1,H),
push(P1,P2),
state(P2,onfloor,P2,H)).

move(state(P3,onfloor,B,H),
walk(P3,P4),
state(P4,onfloor,B,H)).


canget(state(_,_,_,has)):-write('MOnkey has the banana!'),nl.

canget(State1):-
     move(State1,Move,State2),
     write('performing move:'),write(Move),nl,
     canget(State2).

init_state(state(door,onfloor,window,hasnot)).

go:-
   init_state(State),
   canget(State).