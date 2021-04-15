execute unless score #rec_room_table Search matches 1 run scoreboard players reset #rec_room_table Searching
scoreboard players reset #rec_room_table Search
execute if score #rec_room_table Searching matches 20 run function luigis_mansion:room/hidden/rec_room/search_table
execute unless block 655 102 37 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/rec_room/search_table
execute unless block 655 102 38 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/rec_room/search_table