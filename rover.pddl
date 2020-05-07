(define (domain rover-domain)
    (:requirements :typing :durative-actions :fluents) ;requirements definition
    (:types point) ;types definition
    (:predicates ;predicates definition
        (at ?l - point)
        (accessible ?l1 ?l2 - point)
        (moving)
	)
    (:functions ;function definition
        
    )

    (:durative-action move_fast ;rover moves fast
        :parameters
            (?from - point
             ?to - point)

        :duration
            (= ?duration 2)

        :condition
            (and
                (at start (not(moving)));el rover no se esta moviendo
                (at start (at ?from));esta en su posicion inicial
                (at start (accessible ?from ?to)); la meta es accesible desde el origen
			)
        :effect
            (and
                (at start (moving ));al comienzo se mueve
                (at end (not(moving )));al final deja de moverse
                (at end (not (at  ?from))); al final pasa de estar en el origen
                (at end (at  ?to)) ;a estar en el destino
                )
    )



)
