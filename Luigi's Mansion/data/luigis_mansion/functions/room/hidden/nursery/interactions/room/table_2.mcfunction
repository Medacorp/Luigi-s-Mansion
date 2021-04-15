execute unless score #nursery_table_2 Search matches 1 run scoreboard players reset #nursery_table_2 Searching
scoreboard players reset #nursery_table_2 Search
execute if score #nursery_table_2 Searching matches 20 run function luigis_mansion:room/hidden/nursery/search_table_2
execute unless block 707 111 -25 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nursery/search_table_2
execute unless block 707 111 -24 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nursery/search_table_2