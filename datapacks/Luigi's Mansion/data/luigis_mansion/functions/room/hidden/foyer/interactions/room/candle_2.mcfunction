execute unless score #foyer_candle_2 Search matches 1 run scoreboard players reset #foyer_candle_2 Searching
scoreboard players reset #foyer_candle_2 Search
execute if score #foyer_candle_2 Searching matches 20 run function luigis_mansion:room/hidden/foyer/search/candle_2
scoreboard players operation #temp Searching = #foyer_candle_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 751 11 1 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching