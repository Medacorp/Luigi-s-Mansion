execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{dining_room_speedy_spirit:1b} positioned 699 11 -37 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 706 11 -16 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 707 11 -19 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 708 11 -25 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 707 11 -36 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 708 11 -40 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 703 11 -39 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 702 10.5 -28 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
execute positioned 700 11 -41 run function luigis_mansion:spawn_entities/ghost/waiter
tag @e[x=700.5,y=11,z=-40.5,distance=..1,tag=waiter] add kitchen_waiter
execute positioned 704 11 -15 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1