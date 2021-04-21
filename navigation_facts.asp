room(r1).
room(r2).
room(r3).
room(r4).
room(r5).
room(r6).
room(r7).
room(r8).
room(r9).
room(r10).
room(r11).
room(r12).
room(r13).
room(r14).
room(r15).
room(r16).
room(r17).

room(h1).
room(h2).

door(d1).
door(d2).
door(d3).
door(d4).
door(d5).
door(d6).
door(d7).
door(d8).
door(d9).
door(d10).
door(d11).
door(d12).
door(d13).
door(d14).
door(d15).
door(d16).
door(d17).
door(d18).
door(d19).
door(d20).
door(d21).
door(d22).

hasdoor(r1, d1).
hasdoor(h1, d1).
hasdoor(r2, d2).
hasdoor(h1, d2).
hasdoor(r3, d3).
hasdoor(h1, d3).
hasdoor(r4, d4).
hasdoor(h1, d4).
hasdoor(r5, d5).
hasdoor(h1, d5).
hasdoor(r6, d6).
hasdoor(h1, d6).
hasdoor(r7, d7).
hasdoor(h1, d7).
hasdoor(r8, d8).
hasdoor(h1, d8).
hasdoor(r9, d9).
hasdoor(h1, d9).
hasdoor(r9, d10).
hasdoor(h1, d10).
hasdoor(r11, d11).
hasdoor(h1, d11).
hasdoor(r11, d12).
hasdoor(r10, d12).
hasdoor(r11, d13).
hasdoor(h2, d13).
hasdoor(r12, d14).
hasdoor(h2, d14).
hasdoor(r12, d15).
hasdoor(h2, d15).
hasdoor(r13, d16).
hasdoor(h2, d16).
hasdoor(r14, d17).
hasdoor(h2, d17).
hasdoor(r9, d18).
hasdoor(r14, d18).
hasdoor(r15, d19).
hasdoor(h2, d19).
hasdoor(r16, d20).
hasdoor(h2, d20).
hasdoor(r17, d21).
hasdoor(h2, d21).
hasdoor(r9, d22).
hasdoor(h2, d22).


%acc(r1_h1, r1_h2).
%acc(r1_h2, r1_h3).



% UNDER THIS IS OLD WILL DELETE

%what is this saying?
location(E) :- elevator(E).
location(R) :- room(R).


dooracc(R1,D,R2) :- hasdoor(R1,D), hasdoor(R2,D), R1 != R2, door(D), room(R1),
location(R2).
dooracc(R1,D,R2) :- dooracc(R2,D,R1).

acc(L1,L1) :- location(L1).
acc(L1,L2) :- acc(L2,L1), location(L1), location(L2). 
acc(L1,L2) :- acc(L1,L3), acc(L2,L3), location(L1), location(L2), location(L3).



%person(peter). 
%person(ray). 
%person(dana). 
%person(kazunori). 
%person(matteo). 
%person(shiqi). 
%person(jivko). 
%person(stacy).

%inside(peter,l3_508). 
%inside(ray,l3_512).
%inside(dana,l3_510). 
%inside(kazunori,l3_402). 
%inside(matteo,l3_418).
%inside(shiqi,l3_420).
%inside(jivko,l3_432). 
%inside(stacy,l3_502). 

%hide non fluents

%#hide room/1.
%#hide location/1.
%#hide door/1.
%#hide hasdoor/2.
%#hide dooracc/3.
%#hide acc/2.


%#hide person/1.
%#hide inside/2.
