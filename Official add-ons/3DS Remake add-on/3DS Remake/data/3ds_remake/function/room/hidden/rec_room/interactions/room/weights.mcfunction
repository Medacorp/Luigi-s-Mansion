execute unless score #rec_room_weights Search matches 1 run scoreboard players reset #rec_room_weights Searching
scoreboard players reset #rec_room_weights Search
execute if score #rec_room_weights Searching matches 20 run function 3ds_remake:room/hidden/rec_room/search/boo_check/weights
scoreboard players operation #temp Searching = #rec_room_weights Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 639 12 -35 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching