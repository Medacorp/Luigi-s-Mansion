execute unless score #the_twins_room_chair_2 Search matches 1 run scoreboard players reset #the_twins_room_chair_2 Searching
scoreboard players reset #the_twins_room_chair_2 Search
execute if score #the_twins_room_chair_2 Searching matches 20 run function luigis_mansion:room/hidden/the_twins_room/search/boo_check/chair_2
scoreboard players operation #temp Searching = #the_twins_room_chair_2 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 746 20 -30 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching