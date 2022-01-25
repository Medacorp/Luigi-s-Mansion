execute unless score #anteroom_table_3 Search matches 1 run scoreboard players reset #anteroom_table_3 Searching
scoreboard players reset #anteroom_table_3 Search
execute if score #anteroom_table_3 Searching matches 20 run function luigis_mansion:room/hidden/anteroom/search/table_3
execute unless block 685 21 -10 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/anteroom/search/table_3
execute unless block 685 21 -9 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/anteroom/search/table_3