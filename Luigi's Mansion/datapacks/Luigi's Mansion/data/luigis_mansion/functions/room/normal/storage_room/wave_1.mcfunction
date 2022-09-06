execute positioned 684 11 -64 run function luigis_mansion:spawn_entities/ghost/purple_puncher
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["storage_room_speedy_spirit"]} positioned 687 11 -68 run function luigis_mansion:spawn_entities/ghost/
execute positioned 687 11 -68 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute positioned 687 11 -68 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"storage_room_speedy_spirit"}
scoreboard players set #storage_room Wave 1