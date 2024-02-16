(define (problem serve-pizza)
    (:domain pizza)

   (:objects
       
       pizza1 pizza2 pizza3  
       tomato mozzarella
       ham olives
       table 
       container_tomato container_mozzarella
    
   )

   (:init
    
       (PIZZA pizza1) (PIZZA pizza2) (PIZZA pizza3)
       (INGREDIENTES tomato) (INGREDIENTES mozzarella) 
       (TOPPINGS ham) (TOPPINGS olives)
       (TABLE table)
       (CONTAINER container_tomato) (CONTAINER container_mozzarella)
       (ingredientes_container tomato container_tomato) (ingredientes_container mozzarella container_mozzarella)
       (can_go tomato mozzarella)
       (not_cooked pizza1) (not_cooked pizza2) (not_cooked pizza3)

   )

   (:goal (and
    
       (cooked pizza1)
       (cooked pizza2) (toppings_on olives pizza2)
       (cooked pizza3) (toppings_on ham pizza3)


   )
   
   )


)
