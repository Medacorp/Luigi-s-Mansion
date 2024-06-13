execute unless score #nanas_room_loom Search matches 1 run scoreboard players reset #nanas_room_loom Searching
scoreboard players reset #nanas_room_loom Search
execute if score #nanas_room_loom Searching matches 20 run function 3ds_remake:room/hidden/nanas_room/search/boo_check/loom
scoreboard players operation #temp Searching = #nanas_room_loom Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 662 20 -3.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching