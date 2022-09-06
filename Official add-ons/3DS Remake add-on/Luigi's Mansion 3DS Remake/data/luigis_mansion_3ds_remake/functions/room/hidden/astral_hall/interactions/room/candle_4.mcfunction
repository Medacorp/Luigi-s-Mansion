execute unless score #astral_hall_candle_4 Search matches 1 run scoreboard players reset #astral_hall_candle_4 Searching
scoreboard players reset #astral_hall_candle_4 Search
execute if score #astral_hall_candle_4 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/astral_hall/search/boo_check/candle_4
scoreboard players operation #temp Searching = #astral_hall_candle_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 669 20 -84 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching