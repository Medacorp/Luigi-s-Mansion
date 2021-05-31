execute unless score #master_bedroom_table_1 Search matches 1 run scoreboard players reset #master_bedroom_table_1 Searching
scoreboard players reset #master_bedroom_table_1 Search
execute if score #master_bedroom_table_1 Searching matches 20 run function luigis_mansion:room/normal/master_bedroom/search_table_1
execute unless block 695 111 55 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/master_bedroom/search_table_1