(define (problem tomato)
    (:domain tomato-gripper)

   (:objects
      
       tomato1 tomato2 tomato3 tomato4
       location1 location2 location3 location4
       table
        
   )

   (:init
        (TABLE table)
        (POMODORO tomato1) (POMODORO tomato2) (POMODORO tomato3) (POMODORO tomato4)
        (LOCATION location1) (LOCATION location2) (LOCATION location3) (LOCATION location4)
        (on_table table tomato1) (on_table table tomato2) (on_table table tomato3) (on_table table tomato4)
        (empty location1) (empty location2) (empty location3) (empty location4)
   )

    (:goal (and
          (at_location tomato1 location1) (at_location tomato2 location2) (at_location tomato3 location3) (at_location tomato4 location4)
    ))
    
)