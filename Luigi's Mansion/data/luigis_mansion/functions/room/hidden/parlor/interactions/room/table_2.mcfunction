execute unless score #parlor_table_2 Search matches 1 run scoreboard players reset #parlor_table_2 Searching
scoreboard players reset #parlor_table_2 Search
execute if score #parlor_table_2 Searching matches 20 run function luigis_mansion:room/hidden/parlor/search_table_2
execute unless block 684 111 8 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/parlor/search_table_2
execute unless block 684 111 7 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/parlor/search_table_2