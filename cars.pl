% ARTI 303 - Lab 6 - Prolog Programming

% ---- facts: car(Model, Price, Age, Colour, Mileage) -------------

car(chrysler, 130000, 3, red,   12000).
car(ford,      90000, 4, gray,  25000).
car(datsun,    80000, 1, red,   30000).

truck(ford,    80000, 6, blue,   8000).
truck(datsun,  50000, 5, orange, 20000).
truck(toyota,  25000, 2, black,  25000).


% ---- Original canbuy/1 - DO NOT DELETE -------------------------

canbuy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), nl.

canbuy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.


% ---- New canbuy/2 rule - LAB TASK 1 ----------------------------

canbuy(Cost, Colour) :-
    car(Model, C1, _, Colour, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the '), write(Colour),
    write(' car '), write(Model), nl.

canbuy(Cost, Colour) :-
    truck(Model, C2, _, Colour, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the '), write(Colour),
    write(' truck '), write(Model), nl.


% ---- Tests -----------------------------------------------------

% Test 1: existing colour - red
% ?- canbuy(150000, red).
% With 130000 you can purchase the red car chrysler
% true ;
% With 80000 you can purchase the red car datsun
% true ;
% false.

% Test 2: existing colour - blue
% ?- canbuy(100000, blue).
% With 80000 you can purchase the blue truck ford
% true ;
% false.

% Test 3: colour that does not exist - green
% ?- canbuy(100000, green).
% false.
