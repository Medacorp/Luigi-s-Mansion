execute unless score #nanas_room_table_2 Search matches 1 run scoreboard players reset #nanas_room_table_2 Searching
scoreboard players reset #nanas_room_table_2 Search
execute if score #nanas_room_table_2 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/nanas_room/search/boo_check/table_2
scoreboard players operation #temp Searching = #nanas_room_table_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 659.0 20 -18.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching