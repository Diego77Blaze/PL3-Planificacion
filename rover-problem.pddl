(define
    (problem rover)
    (:domain rover-domain)
    (:objects ;declaracion de objetos
        P0000 P0610 - point
    )
    (:init
        (at P0000);el rover esta en el P0000
        (accessible P0000 P0610);declaracion de la accesibilidad entre dos sitios
        (accessible P0610 P0000)
    )
    (:goal (and ;declaracion de la meta
              (at P0610)
            )
    )

)
