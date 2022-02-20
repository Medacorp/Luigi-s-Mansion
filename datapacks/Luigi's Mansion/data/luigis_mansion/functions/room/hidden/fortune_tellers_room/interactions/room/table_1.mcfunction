execute unless score #fortune_tellers_room_table_1 Search matches 1 run scoreboard players reset #fortune_tellers_room_table_1 Searching
scoreboard players reset #fortune_tellers_room_table_1 Search
execute if score #fortune_tellers_room_table_1 Searching matches 20 run function luigis_mansion:room/hidden/fortune_tellers_room/search/boo_check/table_1
scoreboard players operation #temp Searching = #fortune_tellers_room_table_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 736 11 37.0 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching