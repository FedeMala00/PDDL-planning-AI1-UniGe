(define (problem robot-container)
    (:domain container)

   (:objects
       
       truck1 truck2 truck3 truck4
       container1 container2 container3 container4 container5 container6 container7 container8
       hub1 hub2 ;it
       hub3 hub4 ;fr
       station1 ;it
       station2 ;fr
       
   )

   (:init
    
       (TRUCK truck1) (TRUCK truck2) (TRUCK truck3) (TRUCK truck4)
       (CONTAINER container1) (CONTAINER container2) (CONTAINER container3) (CONTAINER container4) (CONTAINER container5) (CONTAINER container6) (CONTAINER container7) (CONTAINER container8)
       (HUB hub1) (HUB hub2) (HUB hub3) (HUB hub4) (HUB station1) (HUB station2)
       (STATION station1) (STATION station2) 

       (container_at container1 hub1) (container_at container2 hub1) (container_at container3 hub1) (container_at container4 hub1)
       (container_at container5 hub2) (container_at container6 hub2) (container_at container7 hub2) (container_at container8 hub2)

       (container_to_train container1 container2 container3 container4)
       (container_to_train container5 container6 container7 container8)

       (train_at station1)

       (empty_train)

       (can_go_train station1 station2) (can_go_train station2 station1)

       (truck_at truck1 hub1) (truck_at truck2 hub2)
       (truck_at truck3 hub3) (truck_at truck4 hub4)

       (empty_truck truck1) (empty_truck truck2) (empty_truck truck3) (empty_truck truck4)

       (can_go_truck hub1 hub2) (can_go_truck hub2 hub1) (can_go_truck hub3 hub4) (can_go_truck hub4 hub3)
       (can_go_truck hub1 station1) (can_go_truck hub2 station1) (can_go_truck hub3 station2) (can_go_truck hub4 station2)
       (can_go_truck station1 hub1) (can_go_truck station1 hub2) (can_go_truck station2 hub3) (can_go_truck station2 hub4)       

   )

   (:goal (and
    
       (container_at container1 hub3) (container_at container2 hub3) (container_at container3 hub3) (container_at container4 hub3)
       (container_at container5 hub4) (container_at container6 hub4) (container_at container7 hub4) (container_at container8 hub4)
       
   )
   
   )



)
