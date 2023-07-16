execute unless score #sitting_room_table_2 Search matches 1 run scoreboard players reset #sitting_room_table_2 Searching
scoreboard players reset #sitting_room_table_2 Search
execute if score #sitting_room_table_2 Searching matches 20 run function 3ds_remake:room/hidden/sitting_room/search/boo_check/table_2
scoreboard players operation #temp Searching = #sitting_room_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 742.0 20 -29.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching