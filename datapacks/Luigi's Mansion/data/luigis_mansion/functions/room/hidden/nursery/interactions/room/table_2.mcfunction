execute unless score #nursery_table_2 Search matches 1 run scoreboard players reset #nursery_table_2 Searching
scoreboard players reset #nursery_table_2 Search
execute if score #nursery_table_2 Searching matches 20 run function luigis_mansion:room/hidden/nursery/search/table_2
execute unless block 739 20 -41 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nursery/search/table_2
execute unless block 739 20 -40 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/nursery/search/table_2