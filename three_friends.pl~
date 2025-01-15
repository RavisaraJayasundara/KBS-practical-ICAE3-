%[name,job,city,rank]

friends(S):-
     S=[p(_,_,_,1),p(_,_,_,2),p(_,_,_,3)],
     member(p(_,_,zurich,_),S),
     member(p(michael,doctor,_,RM),S),
     member(p(_,_,bern,RB),S),RM<RB,
     member(p(danial,_,basel,RD),S),
     member(p(_,bank_manager,_,RBM),S),RD<RBM,
     member(p(_,sport_teacher,_,1),S),
     member(p(bill,_,_,_),S).
