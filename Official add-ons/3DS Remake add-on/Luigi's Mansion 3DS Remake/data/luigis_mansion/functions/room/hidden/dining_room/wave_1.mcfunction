execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["dining_room_speedy_spirit"]} positioned 699 11 -37 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 699 11 -37 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 699 11 -37 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"dining_room_speedy_spirit"}
execute positioned 706 11 -16 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 707 11 -19 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 708 11 -40 run function luigis_mansion:spawn_entities/banana_peel
execute positioned 702 11 -28 rotated -90 0 run function luigis_mansion:spawn_entities/portrait_ghost/mr_luggs
execute positioned 700 11 -41 run function luigis_mansion:spawn_entities/ghost/waiter
tag @e[x=700.5,y=11,z=-40.5,distance=..1,tag=waiter] add kitchen_waiter
execute positioned 704 11 -15 run function luigis_mansion:spawn_entities/ghost/waiter
scoreboard players set #dining_room Wave 1