% Course Recommender
% CPSC 312 2018 Project 2
% Written by Curtis Fox and Jennifer Ahn

% haveprereq(L,C) is true if the list of courses L includes all of the prereqs 
% for course C	
haveprereq(L, course(C)) :- 
	info(C,_,_,_,P,_),
	comparelst(L,P).

% comparelst(L,R) is true if the list L contains all the elements of list R
comparelst(_,[]).
comparelst(L,[H|T]) :-
	contains(H,L),
	comparelst(L,T).
	
% contains(V,L) is true if list L contains the element V
contains(V,[V|T]).
contains(V,[H|T]) :-
	contains(V,T),
	dif(V,H).

% course(C) is true if C is a course
% info(C,D,N,Y,P,T) is true if course C is in department D, has course number N,
% is of year level Y, has pre-reqs P, and has tags T
% Note: tags are words that describe the class

% CPSC courses
course(cpsc110). 
course(cpsc121).
course(cpsc210).
course(cpsc213).
course(cpsc221).
course(cpsc302).
course(cpsc303).
course(cpsc304).
course(cpsc310).
course(cpsc311).
course(cpsc312).
course(cpsc313).
course(cpsc314).
course(cpsc317).
course(cpsc320).
course(cpsc322).
course(cpsc340).
course(cpsc344).
course(cpsc404).
course(cpsc406).
info(cpsc110, 'CPSC', 110, 1, [], ['programming', 'functional', 'racket']).
info(cpsc121, 'CPSC', 121, 1, [], ['proofs', 'logic']).
info(cpsc210, 'CPSC', 210, 2, [cpsc110], ['programming', 'software']).
info(cpsc213, 'CPSC', 213, 2, [cpsc121, cpsc210], ['programming', 'hardware', 'systems']).
info(cpsc221, 'CPSC', 221, 2, [cpsc121, cpsc210], ['programming', 'algorithms', 'proofs']).
info(cpsc302, 'CPSC', 302, 3, [cpsc110, math101, math221], ['linear algebra', 'optimization', 'programming']).
info(cpsc303, 'CPSC', 303, 3, [cpsc110, math101, math221], ['discretization', 'differential equations', 'programming']).
info(cpsc304, 'CPSC', 304, 3, [cpsc221, cpsc210], ['databases', 'programming']).
info(cpsc310, 'CPSC', 310, 3, [cpsc210], ['software', 'programming']).
info(cpsc311, 'CPSC', 311, 3, [cpsc210], ['programming', 'functional', 'racket']).
info(cpsc312, 'CPSC', 312, 3, [cpsc210], ['programming', 'logic', 'functional']).
info(cpsc313, 'CPSC', 313, 3, [cpsc210, cpsc213], ['programming', 'hardware', 'systems']).
info(cpsc314, 'CPSC', 314, 3, [cpsc210], ['programming', 'graphics', 'geometry']).
info(cpsc317, 'CPSC', 317, 3, [cpsc221, cpsc213], ['programming', 'networks', 'hardware']).
info(cpsc320, 'CPSC', 320, 3, [cpsc221], ['algorithms', 'proofs', 'theory']).
info(cpsc322, 'CPSC', 322, 3, [cpsc221, cpsc210], ['AI', 'logic', 'probability']).
info(cpsc340, 'CPSC', 340, 3, [math221, math200, stat200, cpsc221], ['optimization', 'statistical inference', 'linear algebra', 'probability']).
info(cpsc344, 'CPSC', 344, 3, [cpsc210], ['interfaces', 'design']).
info(cpsc404, 'CPSC', 404, 4, [cpsc213, cpsc304], ['databases', 'programming', 'hardware']).
info(cpsc406, 'CPSC', 406, 4, [cpsc302], ['programming', 'linear algebra', 'proofs', 'optimization']).

% MATH courses
course(math100).
course(math101).
course(math200).
course(math215).
course(math220).
course(math221).
course(math223).
course(math226).
course(math300).
course(math302).
course(math307).
course(math312).
course(math316).
course(math317).
course(math320).
course(math321).
course(math322).
course(math323).
course(math340).
course(math342).
course(math344).
info(math100, 'MATH', 100, 1, [], ['calculus']).
info(math101, 'MATH', 101, 1, [math100], ['calculus']).
info(math200, 'MATH', 200, 2, [math101], ['calculus', 'geometry']).
info(math215, 'MATH', 215, 2, [math101], ['differential equations']).
info(math220, 'MATH', 220, 2, [math200], ['proofs', 'theory']).
info(math221, 'MATH', 221, 2, [math101], ['linear algebra']).
info(math223, 'MATH', 223, 2, [math101], ['linear algebra', 'proofs', 'theory', 'honours']).
info(math226, 'MATH', 226, 2, [math101], ['calculus', 'proofs', 'theory', 'honours']).
info(math300, 'MATH', 300, 3, [math200], ['complex numbers', 'proofs', 'calculus']).
info(math302, 'MATH', 302, 3, [math200], ['probability', 'calculus']).
info(math307, 'MATH', 307, 3, [math221, math200], ['linear algebra', 'programming', 'discretization']).
info(math312, 'MATH', 312, 3, [math221, math200], ['number theory', 'proofs']).
info(math316, 'MATH', 316, 3, [math215], ['differential equations']).
info(math317, 'MATH', 317, 3, [math200], ['calculus', 'geometry']).
info(math320, 'MATH', 320, 3, [math220, math200], ['analysis', 'theory', 'proofs', 'honours']).
info(math321, 'MATH', 321, 3, [math320], ['analysis', 'theory', 'proofs', 'honours']).
info(math322, 'MATH', 322, 3, [math221, math220], ['algebra', 'theory', 'proofs', 'honours']).
info(math323, 'MATH', 323, 3, [math322], ['algebra', 'theory', 'proofs', 'honours']).
info(math340, 'MATH', 340, 3, [math221], ['proofs', 'linear programming']).
info(math342, 'MATH', 342, 3, [math221, math220], ['proofs', 'number theory']).
info(math344, 'MATH', 344, 3, [math221, math220], ['proofs', 'linear programming']).