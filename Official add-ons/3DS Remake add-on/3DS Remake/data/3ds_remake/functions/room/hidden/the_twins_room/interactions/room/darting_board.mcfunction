execute unless score #the_twins_room_darting_board Search matches 1 run scoreboard players reset #the_twins_room_darting_board Searching
scoreboard players reset #the_twins_room_darting_board Search
execute if score #the_twins_room_darting_board Searching matches 20 run function 3ds_remake:room/hidden/the_twins_room/search/boo_check/darting_board
scoreboard players operation #temp Searching = #the_twins_room_darting_board Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 738 22 42.0 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching