execute unless score #parlor_candle_2 Search matches 1 run scoreboard players reset #parlor_candle_2 Searching
scoreboard players reset #parlor_candle_2 Search
execute if score #parlor_candle_2 Searching matches 20 run function luigis_mansion:room/hidden/parlor/search/candle_2
scoreboard players operation #temp Searching = #parlor_candle_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 714 22 -11 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching