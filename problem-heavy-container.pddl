(define (problem truck-container)
    (:domain container-heavy)

   (:objects
       
       truck1 truck2 
       location1 location2 location3 location4 location5
       heavy_cont1 heavy_cont2 
       light_cont1 light_cont2 light_cont3 light_cont4
       place1 place2
       
   )

   (:init
    
       (TRUCK truck1) (TRUCK truck2)
       (LOCATION location1) (LOCATION location2) (LOCATION location3) (LOCATION location4) (LOCATION location5)

       (CONTAINER heavy_cont1) (CONTAINER heavy_cont2) 
       (CONTAINER light_cont1) (CONTAINER light_cont2) (CONTAINER light_cont3) (CONTAINER light_cont4)

       (PLACE place1) (PLACE place2)
       (empty place1) (empty place2)

       (can_load_heavy truck1 place1 place2 heavy_cont1) (can_load_heavy truck1 place1 place2 heavy_cont2)
         (can_load_heavy truck2 place1 place2 heavy_cont1) (can_load_heavy truck2 place1 place2 heavy_cont2)

       (can_load_light truck1 place1 light_cont1) (can_load_light truck1 place1 light_cont2) (can_load_light truck1 place1 light_cont3) (can_load_light truck1 place1 light_cont4)
       (can_load_light truck1 place2 light_cont1) (can_load_light truck1 place2 light_cont2) (can_load_light truck1 place2 light_cont3) (can_load_light truck1 place2 light_cont4)

         (can_load_light truck2 place1 light_cont1) (can_load_light truck2 place1 light_cont2) (can_load_light truck2 place1 light_cont3) (can_load_light truck2 place1 light_cont4)
         (can_load_light truck2 place2 light_cont1) (can_load_light truck2 place2 light_cont2) (can_load_light truck2 place2 light_cont3) (can_load_light truck2 place2 light_cont4)
      
       (truck_loc truck1 location4) (truck_loc truck2 location4)

       (container_loc heavy_cont1 location1) (container_loc heavy_cont2 location2)
       (container_loc light_cont1 location1) (container_loc light_cont2 location2) (container_loc light_cont3 location3) (container_loc light_cont4 location4)

   )

    (:goal (and
         (container_loc heavy_cont1 location5)
         (container_loc heavy_cont2 location5)
         (container_loc light_cont1 location5)
         (container_loc light_cont2 location5)
         (container_loc light_cont3 location5)
         (container_loc light_cont4 location5)
    )
    
    )

)
