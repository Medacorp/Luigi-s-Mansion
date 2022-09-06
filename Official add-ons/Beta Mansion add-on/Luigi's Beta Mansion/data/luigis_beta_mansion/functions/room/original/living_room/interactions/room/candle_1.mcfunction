execute unless score #living_room_candle_1 Search matches 1 run scoreboard players reset #living_room_candle_1 Searching
scoreboard players reset #living_room_candle_1 Search
execute if score #living_room_candle_1 Searching matches 20 run function luigis_beta_mansion:room/original/living_room/search/candle_1
scoreboard players operation #temp Searching = #living_room_candle_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 721 21 32 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching