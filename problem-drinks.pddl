(define (problem serve-drink)
    (:domain drinks)

   (:objects
      
       glass1 glass2 glass3 glass4 
       dispenser
       shelf base
       right left
        
   )
    
   (:init
    
       (OBJECT glass1) (OBJECT glass2) (OBJECT glass3) (OBJECT glass4)
       (OBJECT dispenser) 
       (LOCATION shelf) (LOCATION base)
       (GRIPPER right) (GRIPPER left)
       (free right) (free left)
       (at_location glass1 shelf) (at_location glass2 shelf) (at_location glass3 shelf) (at_location glass4 shelf)
       (at_location dispenser base)

       
   )

    (:goal (and
        (pour_drink dispenser glass1)
        (pour_drink dispenser glass2)
        (pour_drink dispenser glass3)
        (pour_drink dispenser glass4)
        
    )
    
    )


)
