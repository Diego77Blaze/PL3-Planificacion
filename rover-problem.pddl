(define
    (problem rover)
    (:domain rover-domain)
    (:objects ;declaracion de objetos
        P0000 P0610 - point
    )
    (:init
        (at P0000);el rover esta en el P0000
        (= (cantidad_bateria ) 100)
        (accessible  lugar1 lugar2);declaracion de la accesibilidad entre dos sitios
        (accessible  lugar1 lugar3)
        (accessible  lugar2 lugar4)
        (accessible lugar3 lugar4)
        (= (bateria_requerida_fotoslow) 3);declaracion de la bateria requerida para realizar distintas acciones
        (= (bateria_requerida_fotofast) 6)
        (= (bateria_requerida_drillslow) 20)
        (= (bateria_requerida_drillfast) 40)
        (= (bateria_requerida_analyseslow) 2)
        (= (bateria_requerida_analysefast) 4)
        (= (bateria_requerida_communicate) 1)
        (= (bateria_requerida_moveslow P0000 P0610) 30)

        (= (umbral_bateria) 20);declaracion del umbral de bateria

        (=(bateria_usada)0);declaracion de la bateria usada
    )
    (:goal (and ;declaracion de la meta
              (picture_taken P0610)
              (communicated)
            )
    )

    (:metric minimize (bateria_usada))
)
