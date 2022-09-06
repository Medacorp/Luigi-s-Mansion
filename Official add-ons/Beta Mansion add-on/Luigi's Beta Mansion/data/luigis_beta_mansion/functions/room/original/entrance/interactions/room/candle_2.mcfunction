execute unless score #entrance_candle_2 Search matches 1 run scoreboard players reset #entrance_candle_2 Searching
scoreboard players reset #entrance_candle_2 Search
execute if score #entrance_candle_2 Searching matches 20 run function luigis_beta_mansion:room/original/entrance/search/candle_2
scoreboard players operation #temp Searching = #entrance_candle_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 751 11 14 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching