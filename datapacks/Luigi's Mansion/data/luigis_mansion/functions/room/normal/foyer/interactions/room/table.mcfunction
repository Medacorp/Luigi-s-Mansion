execute unless score #foyer_table Search matches 1 run scoreboard players reset #foyer_table Searching
scoreboard players reset #foyer_table Search
execute if score #foyer_table Searching matches 20 run function luigis_mansion:room/normal/foyer/search/table
execute unless block 746 11 13 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/foyer/search/table