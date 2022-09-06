execute unless score #secret_altar_candle_3 Search matches 1 run scoreboard players reset #secret_altar_candle_3 Searching
scoreboard players reset #secret_altar_candle_3 Search
execute if score #secret_altar_candle_3 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/secret_altar/search/candle_3
scoreboard players operation #temp Searching = #secret_altar_candle_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 640 93 -20 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching