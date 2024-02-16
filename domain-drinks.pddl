(define (domain drinks)
    (:requirements :strips)

    (:predicates
      
        (OBJECT ?o) (LOCATION ?s) (GRIPPER ?g)
        (free ?g) (holding ?g ?o)
        (at_location ?o ?s)
        (pour_drink ?o1 ?o2) 
        
               
    )

    (:action grab_obj
        :parameters (?o ?g ?s)
        :precondition (and (OBJECT ?o) (GRIPPER ?g) (LOCATION ?s) (at_location ?o ?s) (free ?g))
        :effect (and (not (free ?g)) (not (at_location ?o ?s)) (holding ?g ?o))
    )
    (:action serve_drink
        :parameters (?o1 ?o2 ?g1 ?g2)
        :precondition (and (GRIPPER ?g1) (GRIPPER ?g2) (OBJECT ?o1) (OBJECT ?o2) (holding ?g1 ?o1) (holding ?g2 ?o2))
        :effect (and (pour_drink ?o1 ?o2)
        
        )
        
    )
    (:action putdown_obj
        :parameters (?o ?g ?s)
        :precondition (and (OBJECT ?o) (GRIPPER ?g) (LOCATION ?s) (holding ?g ?o))
        :effect (and (free ?g) (at_location ?o ?s) (not (holding ?g ?o)))
        
    )
    
   
)
