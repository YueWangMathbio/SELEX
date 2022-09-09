# SELEX
Code and data files for the SELEX paper (doi.org/10.1063/5.0094307)

SELEX00.nb: calculate R1, R2, R3, P1, P2 for A<=200 and S<=200.
SELEX01.nb: calculate R1, R2, R3, P1, P2 for A<=200 and 200<S<=1000000 (63 values).
SELEX10.nb: calculate R1, R2, R3, P1, P2 for 200<A<=1000000 (63 values) and S<=200.
SELEX10new.nb: calculate R1, R2, R3, P1, P2 for 200<A<=1000000 (63 values) and 200<S<=1000 (12 values).
pureSELEX00.nb: calculate Pure for A<=100 and S<=100.
pureSELEX01.nb: calculate Pure for A<=100 and 100<S<=100000 51values).
pureSELEX10.nb: calculate Pure for 100<A<=100000 (51 values) and S<=100.
pureSELEX10extra.nb: calculate Pure for 100<A<=100000 (51 values) and 100<S<=1000 (17 values).
tempproducelargeas.m: calculate R1, R2, R3 for A>200 and S>1000.

tempfileprocess.m: combine calculated data.

SELEXplot.m: draw Figures 2-8.

R1.dat: E[a1/(a1+a2)] after 1 round of SELEX.
R2.dat: E[a1/(a1+a2)] after 2 rounds of SELEX.
R3.dat: E[a1/(a1+a2)] after 3 rounds of SELEX.
R1p.dat: E[a1/(a1+a2)] after 1 round of SELEX, conditioned on a1+a2>0.
P1.dat: P(a1=0) after 1 round of SELEX.
P2.dat: P(a1=0,a2=0) after 1 round of SELEX.
newPure.dat: P(a1>0,a2=0) after 1 round of SELEX.
