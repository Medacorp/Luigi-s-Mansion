execute positioned 658 11 21 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 655 11 26 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/purple_puncher
execute positioned 658 11 30 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute positioned 661 11 36 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/gold_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["conservatory_speedy_spirit"]} positioned 660 11 39 run function luigis_mansion:spawn_entities/ghost/can_spawn_now/speedy_spirit
execute positioned 660 11 39 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute positioned 660 11 39 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"conservatory_speedy_spirit"}
scoreboard players set #conservatory Wave 100