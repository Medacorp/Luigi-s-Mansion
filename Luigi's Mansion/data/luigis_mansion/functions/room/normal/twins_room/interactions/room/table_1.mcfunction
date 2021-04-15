execute unless score #twins_room_table_1 Search matches 1 run scoreboard players reset #twins_room_table_1 Searching
scoreboard players reset #twins_room_table_1 Search
execute if score #twins_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/twins_room/search_table_1
execute unless block 707 111 35 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/twins_room/search_table_1
execute unless block 707 111 36 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/twins_room/search_table_1