execute unless score #the_twins_room_toy_3 Search matches 1 run scoreboard players reset #the_twins_room_toy_3 Searching
scoreboard players reset #the_twins_room_toy_3 Search
execute if score #the_twins_room_toy_3 Searching matches 20 run function luigis_mansion_3ds_remake:room/hidden/the_twins_room/search/boo_check/toy_3
scoreboard players operation #temp Searching = #the_twins_room_toy_3 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 747 21 31 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching