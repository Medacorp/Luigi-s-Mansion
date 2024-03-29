data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 63 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 65 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 53 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 57 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 55 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 53 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 63 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 66 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 69 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} run data modify storage luigis_mansion:data entity set value {room:50,loot:{name:"safari_room_gold_mouse"},paths:[{force_move:1b,steps:[{wait:20,position:[739.5d,29.0d,70.5d]},{position:[739.5d,29.0d,67.5d]},{position:[736.5d,29.0d,62.5d]},{position:[741.5d,29.0d,59.5d]},{position:[743.5d,29.0d,59.5d]},{position:[743.5d,29.0d,61.5d]},{position:[741.5d,29.0d,61.5d]},{position:[739.5d,29.0d,55.5d]},{position:[734.5d,29.0d,50.5d]}]}]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} run function luigis_mansion:entities/gold_mouse/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} positioned 739 29 70 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #safari_room Vacuumables 1