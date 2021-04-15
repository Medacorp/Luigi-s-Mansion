execute unless score #foyer_table Search matches 1 run scoreboard players reset #foyer_table Searching
scoreboard players reset #foyer_table Search
execute if score #foyer_table Searching matches 20 run function luigis_mansion:room/hidden/foyer/search_table
execute unless block 709 102 3 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/foyer/search_table