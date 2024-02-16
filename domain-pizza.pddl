(define (domain pizza)
    (:requirements :strips)

    
    (:predicates
      
        (PIZZA ?p) (INGREDIENTES ?i) (TOPPINGS ?t) (CONTAINER ?c) (TABLE ?t) 
        (ingredientes_container ?i ?c) (toppings_container ?t ?c)
        (ingredientes_on ?i ?p) (toppings_on ?t ?c) (on_table ?p ?t) (can_go ?i1 ?i2)
        (added_ingredientes ?p) (cooked ?p) (added_toppings) (not_cooked ?p)

    )

    (:action fetch_dough
        :parameters (?p ?t)
        :precondition (and (PIZZA ?p) (TABLE ?t))
        :effect (and (on_table ?p ?t))
       
    )
    
    (:action put_ingredientes
        :parameters (?i1 ?i2 ?p ?c1 ?c2 ?t)
        :precondition (and (INGREDIENTES ?i1) (INGREDIENTES ?i2) (PIZZA ?p) (CONTAINER ?c1) (CONTAINER ?c2) (TABLE ?t)
        (ingredientes_container ?i1 ?c1) (ingredientes_container ?i2 ?c2) (on_table ?p ?t) (can_go ?i1 ?i2)
        
        )
        :effect (and (ingredientes_on ?i1 ?p) (ingredientes_on ?i2 ?p) (added_ingredientes ?p))
    )

    (:action put_toppings
        :parameters (?p ?t ?table)
        :precondition (and (PIZZA ?p) (TOPPINGS ?t) (TABLE ?table) (on_table ?p ?table) (added_ingredientes?p) (not_cooked ?p))
        :effect (and (toppings_on ?t ?p) (added_toppings))
    )

    (:action cook_margherita
        :parameters (?p)
        :precondition (and (PIZZA ?p) (added_ingredientes ?p) (not_cooked ?p))
        :effect (and (cooked ?p) (not (not_cooked ?p)))
    )

    (:action cook_pizza_topping
        :parameters (?p ?t)
        :precondition (and (PIZZA ?p) (TOPPINGS ?t) (added_ingredientes ?p) (added_toppings) (not_cooked ?p))
        :effect (and (cooked ?p) (not (not_cooked ?p)))
        
    )
    
    
    
    


)