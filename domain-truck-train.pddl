(define (domain container)
    (:requirements :strips)

    
    (:predicates
      
        (CONTAINER ?c)  (TRUCK ?t)  (HUB ?h)   (STATION ?s)    
        
        (can_go_train ?s1 ?s2)(can_go_truck ?h1 ?h2)
        (container_to_train ?c1 ?c2 ?c3 ?c4)

        (container_at ?c ?h)(truck_at ?t ?h)(train_at ?s)

        (loaded_truck ?t ?c)
        (empty_truck ?t)

        (loaded_train ?c1 ?c2 ?c3 ?c4)
        (empty_train)
    
    )

    (:action move_train
        :parameters (?from ?to)
        :precondition (and (STATION ?from) (STATION ?to) (can_go_train ?from ?to) (train_at ?from))
        :effect (and (not (train_at ?from)) (train_at ?to))
    )

    (:action move_truck
        :parameters (?t ?from ?to)
        :precondition (and (TRUCK ?t) (HUB ?from) (HUB ?to) (can_go_truck ?from ?to) (truck_at ?t ?from))
        :effect (and (not (truck_at ?t ?from)) (truck_at ?t ?to))
        
    )
    
    (:action load_train
        :parameters (?c1 ?c2 ?c3 ?c4 ?s)
        :precondition (and (CONTAINER ?c1) (CONTAINER ?c2) (CONTAINER ?c3) (CONTAINER ?c4) (STATION ?s) (container_at ?c1 ?s) (container_at ?c2 ?s) (container_at ?c3 ?s) (container_at ?c4 ?s) (train_at ?s) (empty_train) (container_to_train ?c1 ?c2 ?c3 ?c4))
        :effect (and (not (container_at ?c1 ?s)) (not (container_at ?c2 ?s)) (not (container_at ?c3 ?s)) (not (container_at ?c4 ?s)) (loaded_train ?c1 ?c2 ?c3 ?c4) (not (empty_train)))
        
    )

    (:action load_truck
        :parameters (?t ?c ?h)
        :precondition (and (TRUCK ?t) (CONTAINER ?c) (HUB ?h) (truck_at ?t ?h) (container_at ?c ?h) (empty_truck ?t))
        :effect (and (not (container_at ?c ?h)) (loaded_truck ?t ?c) (not (empty_truck ?t)))
       
    )

    (:action unload_train
        :parameters (?c1 ?c2 ?c3 ?c4 ?s)
        :precondition (and (CONTAINER ?c1) (CONTAINER ?c2) (CONTAINER ?c3) (CONTAINER ?c4) (STATION ?s) (train_at ?s) (loaded_train ?c1 ?c2 ?c3 ?c4) (container_to_train ?c1 ?c2 ?c3 ?c4))
        :effect (and (container_at ?c1 ?s) (container_at ?c2 ?s) (container_at ?c3 ?s) (container_at ?c4 ?s) (not (loaded_train ?c1 ?c2 ?c3 ?c4)) (empty_train) (not (container_to_train ?c1 ?c2 ?c3 ?c4)))
       
    )

    (:action unload_truck
        :parameters (?t ?c ?h)
        :precondition (and (TRUCK ?t) (CONTAINER ?c) (HUB ?h) (truck_at ?t ?h) (loaded_truck ?t ?c))
        :effect (and (container_at ?c ?h) (not (loaded_truck ?t ?c)) (empty_truck ?t))
       
    )

    
)
