execute unless score #master_bedroom_table_2 Search matches 1 run scoreboard players reset #master_bedroom_table_2 Searching
scoreboard players reset #master_bedroom_table_2 Search
execute if score #master_bedroom_table_2 Searching matches 20 run function luigis_mansion:room/hidden/master_bedroom/search_table_2
execute unless block 696 111 -24 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/master_bedroom/search_table_2
execute unless block 695 111 -24 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/master_bedroom/search_table_2