execute unless score #billiards_room_table_2 Search matches 1 run scoreboard players reset #billiards_room_table_2 Searching
scoreboard players reset #billiards_room_table_2 Search
execute if score #billiards_room_table_2 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/billiards_room/search/boo_check/table_2
scoreboard players operation #temp Searching = #billiards_room_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 683 11 88 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching