execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{dining_room_speedy_spirit:1b} positioned 687 102 -6 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 694 102 15 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 695 102 12 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 696 102 6 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 695 102 -5 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 696 102 -9 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 691 102 -8 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 690 102 3 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
execute positioned 688 102 -10 run function luigis_mansion:spawn_entities/ghost/waiter
tag @e[x=688.5,y=102,z=-9.5,distance=..1,tag=waiter] add kitchen_waiter
execute positioned 692 102 16 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1