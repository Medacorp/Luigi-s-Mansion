execute unless score #fortune_tellers_room_candle_2 Search matches 1 run scoreboard players reset #fortune_tellers_room_candle_2 Searching
scoreboard players reset #fortune_tellers_room_candle_2 Search
execute if score #fortune_tellers_room_candle_2 Searching matches 20 run function luigis_mansion:room/normal/fortune_tellers_room/search/boo_check/candle_2
scoreboard players operation #temp Searching = #fortune_tellers_room_candle_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 11 -37 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching