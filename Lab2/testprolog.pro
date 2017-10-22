kruzi(merkur, sunce ).
kruzi(venera,sunce ).
kruzi(zemlja,sunce ).
kruzi(mars,sunce ).
kruzi(jupiter,sunce ).
kruzi(saturn,sunce ).
kruzi(uran,sunce ).
kruzi(neptun,sunce ).
kruzi(pluton,sunce ).
kruzi(mjesec,zemlja ).
kruzi(fobos,mars ).
kruzi(deimos,mars ).
kruzi(ganimed,jupiter ).
kruzi(evropa,jupiter ).
kruzi(titan,saturn ).
kruzi(miranda,uran ).
kruzi(triton,neptun ).
kruzi(haron,pluton ).
planet(P) :- kruzi(P, sunce ).
satelit(S) :- kruzi(S, P) , planet(P).
