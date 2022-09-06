execute unless score #sealed_room_candle_4 Search matches 1 run scoreboard players reset #sealed_room_candle_4 Searching
scoreboard players reset #sealed_room_candle_4 Search
execute if score #sealed_room_candle_4 Searching matches 20 run function luigis_mansion:room/normal/sealed_room/search/candle_4
scoreboard players operation #temp Searching = #sealed_room_candle_4 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 704 22 -70 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching