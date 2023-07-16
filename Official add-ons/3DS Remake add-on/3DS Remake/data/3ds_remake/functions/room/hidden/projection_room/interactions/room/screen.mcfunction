execute unless score #projection_room_screen Search matches 1 run scoreboard players reset #projection_room_screen Searching
scoreboard players reset #projection_room_screen Search
execute if score #projection_room_screen Searching matches 20 run function 3ds_remake:room/hidden/projection_room/search/boo_check/screen
scoreboard players operation #temp Searching = #projection_room_screen Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 676 11 38 run function luigis_mansion:blocks/search_sound/heavy_generic
scoreboard players reset #temp Searching