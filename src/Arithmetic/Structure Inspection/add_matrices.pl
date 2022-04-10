add_matrices(M1,M2,M3):-
   functor(M1,mat,N),           %% Equal length
   functor(M2,mat,N),
   functor(M3,mat,N),
   add_elements(N,M1,M2,M3).

add_elements(0,_M1,_M2,_M3).

add_elements(I,M1,M2,M3):-
   arg(I,M1,X1),                  %% I > 0
   arg(I,M2,X2),
   arg(I,M3,X3),
   compound(X1),
   add_matrices(X1,X2,X3),
   I1 is I - 1,
   add_elements(I1,M1,M2,M3).


add_elements(I,M1,M2,M3):-
   arg(I,M1,X1),                  %% I > 0
   arg(I,M2,X2),
   arg(I,M3,X3),
   X3 is X1 + X2,
   I1 is I - 1,
   add_elements(I1,M1,M2,M3).
