(define (domain plant)
    (:requirements :strips)

    (:predicates
        
        (LOCATION ?l) (PLANT ?p) (CONTAINER ?c)
        (in_loc ?l ?c) (in_container ?p ?c) (free_location ?l)
        (can_go ?from ?to) (at_robby ?l)
    )

    (:action put_plant
        :parameters (?l ?p ?c)
        :precondition (and (PLANT ?p) (LOCATION ?l) (CONTAINER ?c) (in_loc ?l ?c))
        :effect (and (in_container ?p ?c) (not (in_loc ?l ?c)))
        
    )

    (:action put_vase
        :parameters (?p ?c ?from ?to)
        :precondition (and 
            (CONTAINER ?c) 
            (LOCATION ?from) 
            (LOCATION ?to) 
            (free_location ?to)
            (in_container ?p ?c)
            (at_robby ?from)
            (can_go ?from ?to) 
            
        )
        :effect (and (in_loc ?to ?c) (not (free_location ?to)) (not (in_loc ?from ?c)))
        
    )   

    (:action move
        :parameters (?from ?to)
        :precondition (and (LOCATION ?from) (LOCATION ?to) (at_robby ?from) (free_location ?to))
        :effect (and (at_robby ?to) (not (at_robby ?from)))
       
    )
    
    
         
        
   
)
