execute unless score #pipe_room_frozen_barrel Search matches 1 run scoreboard players reset #pipe_room_frozen_barrel Searching
scoreboard players reset #pipe_room_frozen_barrel Search
execute if score #pipe_room_frozen_barrel Searching matches 20 run function 3ds_remake:room/hidden/pipe_room/search/boo_check/frozen_barrel
scoreboard players operation #temp Searching = #pipe_room_frozen_barrel Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 698.0 5 8.0 run function luigis_mansion:blocks/search_sound/heavy_metal
scoreboard players reset #temp Searching