execute unless score #rec_room_table Search matches 1 run scoreboard players reset #rec_room_table Searching
scoreboard players reset #rec_room_table Search
execute if score #rec_room_table Searching matches 20 run function luigis_mansion:room/hidden/rec_room/search/boo_check/table
scoreboard players operation #temp Searching = #rec_room_table Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 639 11 58.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 639 11 57 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/rec_room/search/boo_check/table
execute unless block 639 11 58 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/hidden/rec_room/search/boo_check/table