execute positioned 696.0 21 93.0 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["sealed_room_speedy_spirit"]} positioned 708.0 18.6 95 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 708.0 20 95 as @e[tag=speedy_spirit,distance=..0.1] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 708.0 20 95 as @e[tag=speedy_spirit,distance=..0.1] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"sealed_room_speedy_spirit"}
scoreboard players set #sealed_room Wave 1