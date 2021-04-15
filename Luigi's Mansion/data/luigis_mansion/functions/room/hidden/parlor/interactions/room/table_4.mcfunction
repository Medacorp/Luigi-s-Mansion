execute unless score #parlor_table_4 Search matches 1 run scoreboard players reset #parlor_table_4 Searching
scoreboard players reset #parlor_table_4 Search
execute if score #parlor_table_4 Searching matches 20 run function luigis_mansion:room/hidden/parlor/search_table_4
execute unless block 697 112 16 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/parlor/search_table_4