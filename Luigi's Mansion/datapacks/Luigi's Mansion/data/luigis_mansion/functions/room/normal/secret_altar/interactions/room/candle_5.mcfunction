execute unless score #secret_altar_candle_5 Search matches 1 run scoreboard players reset #secret_altar_candle_5 Searching
scoreboard players reset #secret_altar_candle_5 Search
execute if score #secret_altar_candle_5 Searching matches 20 run function luigis_mansion:room/normal/secret_altar/search/candle_5
scoreboard players operation #temp Searching = #secret_altar_candle_5 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 650 93 -24 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching