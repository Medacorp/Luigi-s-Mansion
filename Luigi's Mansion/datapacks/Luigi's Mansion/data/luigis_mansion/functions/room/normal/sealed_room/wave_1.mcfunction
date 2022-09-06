execute positioned 695 21 -77 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_speedy_spirit"]} positioned 707 20 -80 run function luigis_mansion:spawn_entities/ghost/
execute positioned 707 20 -80 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/green_emerald
execute positioned 707 20 -80 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"sealed_room_speedy_spirit"}
scoreboard players set #sealed_room Wave 1