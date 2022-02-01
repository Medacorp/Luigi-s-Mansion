execute unless score #cellar_candle_1 Search matches 1 run scoreboard players reset #cellar_candle_1 Searching
scoreboard players reset #cellar_candle_1 Search
execute if score #cellar_candle_1 Searching matches 20 run function luigis_mansion:room/normal/cellar/search/candle_1
scoreboard players operation #temp Searching = #cellar_candle_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 745 5 -44 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching