(define
    (problem rover)
    (:domain rover-domain)
    (:objects ;declaracion de objetos
        P0000 P0101 P0304 P0610 - point
    )
    (:init
        (at P0000);el rover esta en el P0000
        (= (cantidad_bateria ) 100)
        (accessible  P0000 P0101);declaracion de la accesibilidad entre dos sitios
        (accessible  P0000 P0304)
        (accessible  P0101 P0610)
        (accessible P0304 P0610)
        (= (bateria_requerida_fotoslow) 3);declaracion de la bateria requerida para realizar distintas acciones
        (= (bateria_requerida_fotofast) 6)
        (= (bateria_requerida_drillslow) 20)
        (= (bateria_requerida_drillfast) 40)
        (= (bateria_requerida_analyseslow) 2)
        (= (bateria_requerida_analysefast) 4)
        (= (bateria_requerida_communicate) 1)
        (= (bateria_requerida_moveslow P0000 P0101) 30)
        (= (bateria_requerida_moveslow P0000 P0304) 25)
        (= (bateria_requerida_moveslow P0101 P0610) 15)
        (= (bateria_requerida_moveslow P0304 P0610) 15)
        (= (bateria_requerida_movefast P0000 P0101) 60)
        (= (bateria_requerida_movefast P0000 P0304) 50)
        (= (bateria_requerida_movefast P0101 P0610) 30)
        (= (bateria_requerida_movefast P0304 P0610) 30)
        (= (umbral_bateria) 20);declaracion del umbral de bateria

        (=(bateria_usada)0);declaracion de la bateria usada
    )
    (:goal (and ;declaracion de la meta
              (analysed P0304)
              (picture_taken P0304)
              (drilled P0610)
              (drilled P0304)
              (analysed P0610)
              (analysed P0000)
              (communicated)
              (at P0610)
            )
    )

    (:metric minimize (bateria_usada))
)
