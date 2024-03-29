data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 -48 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 -50 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 -38 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 -42 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 -40 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 734 29 -38 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 -48 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 -51 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
data modify storage luigis_mansion:data entity set value {room:50}
execute positioned 744 29 -54 run function luigis_mansion:spawn_entities/vacuumable/blue_mouse
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} run data modify storage luigis_mansion:data entity set value {room:50,loot:{name:"safari_room_gold_mouse"},paths:[{force_move:1b,steps:[{wait:20,position:[739.5d,29.0d,-54.5d]},{position:[739.5d,29.0d,-51.5d]},{position:[736.5d,29.0d,-46.5d]},{position:[741.5d,29.0d,-43.5d]},{position:[743.5d,29.0d,-43.5d]},{position:[743.5d,29.0d,-45.5d]},{position:[741.5d,29.0d,-45.5d]},{position:[739.5d,29.0d,-39.5d]},{position:[734.5d,29.0d,-34.5d]}]}]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} run function luigis_mansion:entities/gold_mouse/give_money/bills
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["safari_room_gold_mouse"]} positioned 739 29 -55 run function luigis_mansion:spawn_entities/vacuumable/gold_mouse
scoreboard players set #safari_room Vacuumables 1