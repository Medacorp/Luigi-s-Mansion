execute unless score #nanas_room_table_1 Search matches 1 run scoreboard players reset #nanas_room_table_1 Searching
scoreboard players reset #nanas_room_table_1 Search
execute if score #nanas_room_table_1 Searching matches 20 run function luigis_mansion:room/hidden/nanas_room/search/boo_check/table_1
scoreboard players operation #temp Searching = #nanas_room_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 659 20 27 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching