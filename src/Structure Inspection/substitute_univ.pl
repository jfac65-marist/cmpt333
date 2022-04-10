substitute(Old,New,Old,New).

substitute(Old,New,Term,Term) :-
   atomic(Term), Term \= Old.

substitute(Old,New,Term,Term1) :-
   compound(Term),
   Term =.. [F|Args],
   length(Args,N),
   substitute(N,Old,New,Args,Args1),
   Term1 =.. [F|Args1].

substitute(N,Old,New,[Arg|Args],[Arg1|Args1]) :-
   N > 0,
   substitute(Old,New,Arg,Arg1),
   N1 is N-1,
   substitute(N1,Old,New,Args,Args1).

substitute(0,_,_,[],[]).
