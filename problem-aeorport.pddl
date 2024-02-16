(define (problem agent-airpot)
    (:domain airport)

    (:objects
        agent
        home airportA airportB
        car plane
    )

    (:init
        (AGENT agent) (LOCATION home) (MEZZO_TRASPORTO car) (MEZZO_TRASPORTO plane) (LOCATION airportA) (LOCATION airportB)
        (at_loc agent home) 
        (at_mezzo home car) (at_mezzo airportA plane)
        (can_go car home airportA) (can_go plane airportA airportB)
    )

    (:goal 
        (and
            (at_loc agent airportB)
        )
    )

)
    