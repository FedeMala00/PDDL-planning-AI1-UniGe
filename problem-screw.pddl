(define (problem screw-wrench)
    (:domain screw)

   (:objects
        room1 room2 room3 
        screwdriver wrench
        nut1 screw1 nut2 screw2
   )

   (:init

       (ROOM room1) (ROOM room2) (ROOM room3)
       (GRIPPER screwdriver) (GRIPPER wrench)
       (OBJECTS nut1) (OBJECTS screw1) (OBJECTS nut2) (OBJECTS screw2)
       (rob_room room1)
       (obj_room room1 nut1) (obj_room room2 nut2) (obj_room room2 screw1) (obj_room room3 screw2)
       (can_fix nut1 wrench) (can_fix nut2 wrench) (can_fix screw1 screwdriver) (can_fix screw2 screwdriver)
       
   )

    (:goal (and
         (fixed_obj nut1) (fixed_obj nut2) (fixed_obj screw1) (fixed_obj screw2)
    )
    
    )

)
