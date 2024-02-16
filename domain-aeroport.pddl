(define (domain airport)
    ; we require STRIPS: classical planning with no negative preconditions
    (:requirements :strips)
    
    (:predicates
        (AGENT ?a) (LOCATION ?l) (MEZZO_TRASPORTO ?m)
        (at_loc ?a ?l)
        (at_mezzo ?l ?m)
        (on_mean ?a ?m)
        (can_go ?m ?from ?to)
    )

    (:action get_on
        :parameters (?a ?m ?l) 
        :precondition (and 
            (AGENT ?a) (MEZZO_TRASPORTO ?m) 
            (LOCATION ?l)
            (at_loc ?a ?l) (at_mezzo ?l ?m) 
        )
        :effect (and 
            (on_mean ?a ?m)
            (not (at_loc ?a ?l))
        )
        
    )
    
    (:action get_off
        :parameters (?a ?m ?l)
        :precondition (and 
            (AGENT ?a) (MEZZO_TRASPORTO ?m) 
            (LOCATION ?l)
            (at_mezzo ?l ?m) 
            (on_mean ?a ?m)
        )
        :effect (and 
            (at_loc ?a ?l)
            (not (on_mean ?a ?m))
        )
        
    )
    
    (:action move
        :parameters (?a ?m ?from ?to)
        :precondition (and 
            (AGENT ?a) (MEZZO_TRASPORTO ?m) 
            (LOCATION ?from) (LOCATION ?to)
            (at_mezzo ?from ?m)
            (on_mean ?a ?m) (can_go ?m ?from ?to)
        )
        :effect (and 
            (at_mezzo ?to ?m)
            (not (at_mezzo ?from ?m))
        )
    )
    
    

)