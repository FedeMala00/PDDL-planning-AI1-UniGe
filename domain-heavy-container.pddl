(define (domain container-heavy)
    (:requirements :strips)

    
    (:predicates
      
        (LOCATION ?l) (CONTAINER ?c) (TRUCK ?t) (PLACE ?p)
        (truck_loc ?t ?l) (container_loc ?c ?l)
        (empty ?p) (loaded ?p ?c)
        (can_load_light ?t ?p ?c) (can_load_heavy ?t ?p1 ?p2 ?c)
    )

    (:action move
        :parameters (?t ?from ?to)
        :precondition (and 
            (TRUCK ?t) (LOCATION ?from) (LOCATION ?to)
            (truck_loc ?t ?from) 
        )
        :effect (and 
            (not (truck_loc ?t ?from))
            (truck_loc ?t ?to)
        )

    )

    (:action load_container_light
        :parameters (?t ?c1 ?l ?p)
        :precondition (and 
            (TRUCK ?t) (CONTAINER ?c1) (LOCATION ?l) (PLACE ?p)
            (truck_loc ?t ?l) (container_loc ?c1 ?l)
            (empty ?p) (can_load_light ?t ?p ?c1)
        )
        :effect (and 
            (not (empty ?p))
            (not (container_loc ?c1 ?l))
            (loaded ?p ?c1)
        )
    )

    (:action load_container_heavy
        :parameters (?t ?c ?l ?p1 ?p2)
        :precondition (and 
            (TRUCK ?t) (CONTAINER ?c) (LOCATION ?l) (PLACE ?p1) (PLACE ?p2)
            (truck_loc ?t ?l) (container_loc ?c ?l)
            (empty ?p1) (empty ?p2) (can_load_heavy ?t ?p1 ?p2 ?c)
        )
        :effect (and 
            (not (empty ?p1))
            (not (empty ?p2))
            (loaded ?p1 ?c)
            (loaded ?p2 ?c)
            (not (container_loc ?c ?l))
        )
        
    )

    (:action unload_container_light
        :parameters (?t ?c1 ?l ?p)
        :precondition (and 
            (TRUCK ?t) (CONTAINER ?c1) (LOCATION ?l) (PLACE ?p)
            (truck_loc ?t ?l) (loaded ?p ?c1)
        )
        :effect (and 
            (empty ?p)
            (container_loc ?c1 ?l)
            (not (loaded ?p ?c1))
        )
    )

    (:action unload_container_heavy
        :parameters (?t ?c ?l ?p1 ?p2)
        :precondition (and 
            (TRUCK ?t) (CONTAINER ?c) (LOCATION ?l) (PLACE ?p1) (PLACE ?p2)
            (truck_loc ?t ?l) (loaded ?t ?c) (loaded ?p1 ?c) (loaded ?p2 ?c)
        )
        :effect (and 
            (empty ?p1)
            (empty ?p2)
            (container_loc ?c ?l)
            (not (loaded ?p1 ?c))
            (not (loaded ?p2 ?c))
        )
        
    )
    
    
    
    
    
    

    
)
