execute positioned 653 11 18 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
execute positioned 656 11 18 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
execute positioned 656 11 24 run function luigis_mansion:spawn_entities/ghost/red_grabbing_ghost
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_1_speedy_spirit"]} run function luigis_mansion:old_entities/speedy_spirit/give_money/gold_bars
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_1_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "bathroom_1_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["bathroom_1_speedy_spirit"]} positioned 651 11 18 run function luigis_mansion:spawn_entities/ghost/
scoreboard players set #bathroom_1 Wave 1