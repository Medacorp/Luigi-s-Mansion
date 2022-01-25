execute unless score #anteroom_table_1 Search matches 1 run scoreboard players reset #anteroom_table_1 Searching
scoreboard players reset #anteroom_table_1 Search
execute if score #anteroom_table_1 Searching matches 20 run function luigis_mansion:room/hidden/anteroom/search/table_1
execute unless block 685 21 -26 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/anteroom/search/table_1
execute unless block 685 21 -25 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/anteroom/search/table_1