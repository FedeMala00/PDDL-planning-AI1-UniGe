(define (domain tomato-gripper)
    (:requirements :strips)

    (:predicates
      
        (POMODORO ?p) (TABLE ?t) (LOCATION ?l)
        (empty ?l) 
        (on_table ?p ?t)
        (at_location ?p ?l)       
        
    )

    (:action move_tomato
        :parameters (?p ?t ?l)
        :precondition (and 
        (POMODORO ?p) (TABLE ?t) (LOCATION ?l) 
        (empty ?l)
        )
        :effect (and
        (at_location ?p ?l)
        (not (empty ?l))
        )    
        
    )
    
   
)
