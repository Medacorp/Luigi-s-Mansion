execute unless score #astral_hall_table_2 Search matches 1 run scoreboard players reset #astral_hall_table_2 Searching
scoreboard players reset #astral_hall_table_2 Search
execute if score #astral_hall_table_2 Searching matches 20 run function luigis_mansion:room/hidden/astral_hall/search_table_2
execute unless block 673 111 42 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/astral_hall/search_table_2