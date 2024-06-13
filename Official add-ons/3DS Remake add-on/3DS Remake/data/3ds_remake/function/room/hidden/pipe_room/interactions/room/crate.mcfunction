execute unless score #pipe_room_crate Search matches 1 run scoreboard players reset #pipe_room_crate Searching
scoreboard players reset #pipe_room_crate Search
execute if score #pipe_room_crate Searching matches 20 run function 3ds_remake:room/hidden/pipe_room/search/boo_check/crate
scoreboard players operation #temp Searching = #pipe_room_crate Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 695.0 5 2.0 run function luigis_mansion:blocks/search_sound/metal
scoreboard players reset #temp Searching