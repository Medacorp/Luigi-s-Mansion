execute unless score #the_twins_room_chair_1 Search matches 1 run scoreboard players reset #the_twins_room_chair_1 Searching
scoreboard players reset #the_twins_room_chair_1 Search
execute if score #the_twins_room_chair_1 Searching matches 20 run function luigis_mansion:room/normal/the_twins_room/search/chair_1
scoreboard players operation #temp Searching = #the_twins_room_chair_1 Searching
scoreboard players operation #temp Searching %= #3 Constants
execute if score #temp Searching matches 1 positioned 747 20 46 run function luigis_mansion:blocks/search_sound/generic
scoreboard players reset #temp Searching