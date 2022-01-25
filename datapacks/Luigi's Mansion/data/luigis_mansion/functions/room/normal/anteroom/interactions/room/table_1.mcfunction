execute unless score #anteroom_table_1 Search matches 1 run scoreboard players reset #anteroom_table_1 Searching
scoreboard players reset #anteroom_table_1 Search
execute if score #anteroom_table_1 Searching matches 20 run function luigis_mansion:room/normal/anteroom/search/table_1
execute unless block 685 21 41 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/anteroom/search/table_1
execute unless block 685 21 40 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/anteroom/search/table_1