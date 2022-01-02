execute unless score #the_twins_room_table_1 Search matches 1 run scoreboard players reset #the_twins_room_table_1 Searching
scoreboard players reset #the_twins_room_table_1 Search
execute if score #the_twins_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/the_twins_room/search_table_1
execute unless block 738 20 47 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/the_twins_room/search_table_1
execute unless block 738 20 48 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/the_twins_room/search_table_1