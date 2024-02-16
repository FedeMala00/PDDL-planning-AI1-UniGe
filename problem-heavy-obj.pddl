(define (problem robot-gripper)
    (:domain gripper-heavy)

   (:objects
        room1 room2 room3 room4
        left right
        heavy_obj1 heavy_obj2 light_obj1 light_obj2
        
   )

    (:init 
        (ROOM room1) (ROOM room2) (ROOM room3) (ROOM room4)
        (OBJECTS heavy_obj1) (OBJECTS heavy_obj2) (OBJECTS light_obj1) (OBJECTS light_obj2)
        (GRIPPER left) (GRIPPER right)
        (rob_room room1)
        (obj_room heavy_obj1 room2) (obj_room heavy_obj2 room3) (obj_room light_obj1 room2) (obj_room light_obj2 room3)
        (free_single left) (free_single right)
        (can_hold_heavy heavy_obj1 right left) (can_hold_heavy heavy_obj2 right left)
        (can_hold_light light_obj1 left ) (can_hold_light light_obj2 left) (can_hold_light light_obj1 right) (can_hold_light light_obj2 right)


    )

    (:goal 
        (and
            (obj_room light_obj1 room4)
            (obj_room light_obj2 room4)
            (obj_room heavy_obj1 room4)
            (obj_room heavy_obj2 room4)
        )   
        
    )
)