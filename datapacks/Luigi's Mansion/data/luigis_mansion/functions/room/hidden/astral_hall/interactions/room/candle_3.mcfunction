execute unless score #astral_hall_candle_3 Search matches 1 run scoreboard players reset #astral_hall_candle_3 Searching
scoreboard players reset #astral_hall_candle_3 Search
execute if score #astral_hall_candle_3 Searching matches 20 run function luigis_mansion:room/hidden/astral_hall/search/candle_3
scoreboard players operation #temp Searching = #astral_hall_candle_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 20 97 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching