execute positioned 737 2 70 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute positioned 743 2 62 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "cellar_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["cellar_speedy_spirit"]} positioned 738 3 60 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
scoreboard players set #cellar Wave 1