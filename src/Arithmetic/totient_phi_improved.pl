% phi.pl
% Euler’s so-called totient function phi(m) is defined as the number of positive
% integers r (1 <= r < m) that are coprime to m.
%
:- ensure_loaded(prime_factors_mult).
:- arithmetic_function(totient_phi_improved/1).

totient_phi_improved(1,1).
totient_phi_improved(M,R) :-
    prime_factors_mult(M,L),
    calculate_phi(L,R).

% The numbers are coprime, so increment the count
calculate_phi(L,R) :- calculate_phi(1,L,R).

calculate_phi(Phi,[],Phi).
calculate_phi(Phi,[[P,M]|L],R) :-
    Phi1 is Phi * (P - 1)*P**(M-1),
    calculate_phi(Phi1,L,R).

