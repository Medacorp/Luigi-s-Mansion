execute unless score #mirror_room_candle_1 Search matches 1 run scoreboard players reset #mirror_room_candle_1 Searching
scoreboard players reset #mirror_room_candle_1 Search
execute if score #mirror_room_candle_1 Searching matches 20 run function luigis_mansion:room/hidden/mirror_room/search/candle_1
scoreboard players operation #temp Searching = #mirror_room_candle_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 736 11 59 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching