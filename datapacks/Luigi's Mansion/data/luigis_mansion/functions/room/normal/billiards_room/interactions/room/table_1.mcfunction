execute unless score #billiards_room_table_1 Search matches 1 run scoreboard players reset #billiards_room_table_1 Searching
scoreboard players reset #billiards_room_table_1 Search
execute if score #billiards_room_table_1 Searching matches 20 run function luigis_mansion:room/normal/billiards_room/search/boo_check/table_1
scoreboard players operation #temp Searching = #billiards_room_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 679 11 88 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching
execute unless block 679 11 88 minecraft:chest{LootTable:"luigis_mansion:search"} run function luigis_mansion:room/normal/billiards_room/search/boo_check/table_1