execute unless score #mirror_room_candle_2 Search matches 1 run scoreboard players reset #mirror_room_candle_2 Searching
scoreboard players reset #mirror_room_candle_2 Search
execute if score #mirror_room_candle_2 Searching matches 20 run function luigis_mansion:room/normal/mirror_room/search/boo_check/candle_2
scoreboard players operation #temp Searching = #mirror_room_candle_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 736 11 -61 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching