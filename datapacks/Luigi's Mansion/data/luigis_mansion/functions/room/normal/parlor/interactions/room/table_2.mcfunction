execute unless score #parlor_table_2 Search matches 1 run scoreboard players reset #parlor_table_2 Searching
scoreboard players reset #parlor_table_2 Search
execute if score #parlor_table_2 Searching matches 20 run function luigis_mansion:room/normal/parlor/search_table_2
execute unless block 714 20 28 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/parlor/search_table_2
execute unless block 714 20 27 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/parlor/search_table_2