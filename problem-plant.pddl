(define (problem gardener-robot)
    (:domain plant)

   (:objects
       
       store spotA spotB spotC spotD
       plant
       crate vase1 vase2 vase3 vase4

   )

   (:init
       
       (LOCATION store) (LOCATION spotA) (LOCATION spotB) (LOCATION spotC) (LOCATION spotD)
       (PLANT plant)
       (CONTAINER crate) (CONTAINER vase1) (CONTAINER vase2) (CONTAINER vase3) (CONTAINER vase4)
       (in_loc store crate) (in_loc store vase1) (in_loc store vase2) (in_loc store vase3) (in_loc store vase4)
       (in_container plant crate)
       (at_robby store)
       (can_go store spotA) (can_go store spotB) 
       (can_go spotA spotC) (can_go spotB spotD)
       (free_location spotA) (free_location spotB) (free_location spotC) (free_location spotD) (free_location store)
    
   )

   (:goal (and
       
       (in_loc spotA vase1) 
       (in_loc spotB vase2) 
        (in_loc spotC vase3)
        (in_loc spotD vase4)

       
   )
   
   )


)
