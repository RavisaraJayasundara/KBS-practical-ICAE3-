init_state(state(0,0)).
goal_state(state(2,0)).

write_action(action1):-write('fill the 4l jug'),nl.
write_action(action2):-write('fill the 3l jug'),nl.
write_action(action3):-write('Empty the 4l jug'),nl.
write_action(action4):-write('Empty the 3l jug'),nl.
write_action(action5):-write('pour water from 3l jug to 4l jug'),nl.
write_action(action6):-write('pour water from 4l jug to 3l jug'),nl.
write_action(action7):-write('Empty the 4l jug by filling 3l jug '),nl.
write_action(action8):-write('empty the 3l jug by filling 4l jug'),nl.


fill(state(L,S),action1,state(4,S)):-L<4.
fill(state(L,S),action2,state(L,3)):-S<3.
fill(state(L,S),action3,state(0,S)):-s>0.
fill(state(L,S),action4,state(L,0)):-L>0.
fill(state(L,S),action5,state(4,T)):-L<4,T is S-(4-L),s>0.
fill(state(L,S),action6,state(T,3)):-S<3,T is L-(3-S),L>0.
fill(state(L,S),action7,state(0,T)):-L>0,T is S+L ,S<3.
fill(state(L,S),action8,state(T,0)):-S>0,T is S+L,L<4.






write_action_list([]).
write_action_list([H|T]):- write_action(H),write_action_list(T),!.

mem(X,[X|_]):-!.
mem(X,[_|L]):-member(X,L).

can_fill(S,S,P,P):-!.
can_fill(S1,S2,M,[A|T]):-fill(S1,A,S3),not(mem(S3,M)),
						can_fill(S3,S2,[S3|M],T),!.

go:-init_state(S),goal_state(G),can_fill(S,G,[S],L),write_action_list(L),!.
