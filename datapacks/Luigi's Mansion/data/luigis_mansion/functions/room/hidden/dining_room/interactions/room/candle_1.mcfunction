execute unless score #dining_room_candle_1 Search matches 1 run scoreboard players reset #dining_room_candle_1 Searching
scoreboard players reset #dining_room_candle_1 Search
execute if score #dining_room_candle_1 Searching matches 20 run function luigis_mansion:room/hidden/dining_room/search/candle_1
scoreboard players operation #temp Searching = #dining_room_candle_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 704 12 -31 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching