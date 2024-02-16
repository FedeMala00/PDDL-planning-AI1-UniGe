(define (domain gripper-heavy)
    (:requirements :strips)

    (:predicates
        (ROOM ?r) (OBJECTS ?o) (GRIPPER ?g)

        (rob_room ?r) ;robot in room 
       (obj_room ?o ?r) ;object in room
        (free_single ?g)
        (holding_single ?g ?o) (holding_heavy ?o ?g1 ?g2)
        (can_hold_heavy ?o ?g1 ?g2)
        (can_hold_light ?o ?g)
    
    )

    (:action move
        :parameters (?from ?to)
        :precondition (and 
            (ROOM ?from)
            (ROOM ?to)
            (rob_room ?from)
        )
        :effect (and 
            (not (rob_room ?from))
            (rob_room ?to)
        )
        
    )

    (:action pick_up_light
        :parameters (?o ?r ?g)
        :precondition (and 
            (OBJECTS ?o)
            (GRIPPER ?g)
            (ROOM ?r)
            (rob_room ?r)
            (obj_room ?o ?r)
            (free_single ?g)
            (can_hold_light ?o ?g)

        )
        :effect (and 
            (not (free_single ?g))
            (holding_single ?g ?o)
        )  

    )

    (:action pick_up_heavy
        :parameters (?o ?r ?g1 ?g2)
        :precondition (and 
            (OBJECTS ?o)
            (GRIPPER ?g1)
            (GRIPPER ?g2)
            (ROOM ?r)
            (rob_room ?r)
            (obj_room ?o ?r)
            (free_single ?g1)
            (free_single ?g2)
            (can_hold_heavy ?o ?g1 ?g2)

        )
        :effect (and 
            (not (free_single ?g1))
            (not (free_single ?g2))
            (holding_heavy ?o ?g1 ?g2)
        )
    )
    
    (:action put_down_light
        :parameters (?o ?r ?g)
        :precondition (and 
            (OBJECTS ?o)
            (GRIPPER ?g)
            (ROOM ?r)
            (rob_room ?r)
            (holding_single ?g ?o)
        )
        :effect (and 
            (free_single ?g)
            (not (holding_single ?g ?o))
            (obj_room ?o ?r)
        )
    )

    (:action put_down_heavy
        :parameters (?o ?r ?g1 ?g2)
        :precondition (and 
            (OBJECTS ?o)
            (GRIPPER ?g1)
            (GRIPPER ?g2)
            (ROOM ?r)
            (rob_room ?r)
            (holding_heavy ?o ?g1 ?g2)
        )
        :effect (and 
            (free_single ?g1)
            (free_single ?g2)
            (not (holding_heavy ?o ?g1 ?g2))
            (obj_room ?o ?r)

        )
    )

     
)
