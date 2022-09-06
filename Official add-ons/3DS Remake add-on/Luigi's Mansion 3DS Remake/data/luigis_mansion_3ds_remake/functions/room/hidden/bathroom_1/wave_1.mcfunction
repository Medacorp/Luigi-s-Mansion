execute positioned 653 11 18 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
execute positioned 656 11 18 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
execute positioned 656 11 24 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_1_speedy_spirit"]} positioned 651 11 18 run function luigis_mansion:spawn_entities/ghost/
execute positioned 651 11 18 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/gold_bars
execute positioned 651 11 18 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"bathroom_1_speedy_spirit"}
scoreboard players set #bathroom_1 Wave 1